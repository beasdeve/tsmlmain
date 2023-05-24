-- MySQL dump 10.13  Distrib 5.6.51, for Linux (x86_64)
--
-- Host: localhost    Database: tsml_db
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresstwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cus_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cam_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `erdat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ernam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lifnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cityc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sprac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lzone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vbund` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duefl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kdkg2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aedat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usnam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'3',NULL,NULL,NULL,'Universal Business Park 1','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','A',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'3',NULL,NULL,NULL,'Universal Business Park 2','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'3',NULL,NULL,NULL,'Universal Business Park 3','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Mumbai Suburban','Maharashtra','58964','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'3',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'70',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'8979879987','2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'70',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'70',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'9879878','2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'71',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-08 03:46:34','2022-12-08 03:46:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'71',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'8888888888888','2022-12-08 03:46:34','2022-12-08 03:46:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'71',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-08 03:46:34','2022-12-08 03:46:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'71',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'99999999999999999','2022-12-08 03:46:34','2022-12-08 03:46:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'72',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-08 03:50:36','2022-12-08 03:50:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'72',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-08 03:50:36','2022-12-08 03:50:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'73',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-09 07:21:39','2022-12-09 07:21:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'73',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'899999999','2022-12-09 07:21:39','2022-12-09 07:21:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'73',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-09 07:21:39','2022-12-09 07:21:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'74',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-11 23:43:58','2022-12-11 23:43:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'74',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'4645HHRJK56H','2022-12-11 23:43:58','2022-12-11 23:43:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'74',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-11 23:43:58','2022-12-11 23:43:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'74',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'98JYJKJN090','2022-12-11 23:43:58','2022-12-11 23:43:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'80','REYNOLDS PENS INDIA PRIVATE LIMITED',NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-22 00:23:07','2022-12-22 00:23:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'80','REYNOLDS PENS INDIA PRIVATE LIMITED',NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-22 00:23:07','2022-12-22 00:23:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'80','REYNOLDS PENS INDIA PRIVATE LIMITED',NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-22 00:23:07','2022-12-22 00:23:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'81','TATA STEEL LIMITED',NULL,NULL,'Block No.4,General Office,',NULL,'JAJPUR','OR','755026','B',NULL,'21AAACT2803M1ZN','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000000','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','3/23/2022','000534','ZDOM',NULL,'','E','EAST','TSLL','','X','',NULL,'AAACT2803M','3/23/2022','000534'),(37,'81','TATA STEEL LIMITED',NULL,NULL,'Kalinga Nagar,Duburi,BLOCK NO.4,GENERAL OFFICE',NULL,'JAJPUR','OR','755026','A',NULL,'21AAACT2803M1ZN','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000000','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','3/23/2022','000534','ZDOM',NULL,'','E','EAST','TSLL','','X','',NULL,'AAACT2803M','3/23/2022','000534'),(38,'81','TATA STEEL BSL LIMITED',NULL,NULL,'TATA STEEL BSL LIMITED',NULL,'DHENKANAL','OR','759121','B',NULL,'21AAACB1247M1Z1','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000037','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','11/6/2020','SD_CUTOVER','ZDOM',NULL,'1061','E','EAST','','','X','P',NULL,'',NULL,''),(39,'81','TATA STEEL BSL LIMITED',NULL,NULL,'AT: NARENDRAPUR, PO: KUSUPANGA, VIA,TATA STEEL BSL LIMITED',NULL,'DHENKANAL','OR','759121','A',NULL,'21AAACB1247M1Z1','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000037','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','11/6/2020','SD_CUTOVER','ZDOM',NULL,'1061','E','EAST','','','X','P',NULL,'',NULL,''),(40,'81','TATA STEEL BSL LIMITED',NULL,NULL,'AT: NARENDRAPUR, PO: KUSUPANGA,',NULL,'DHENKANAL','OR','759121','B',NULL,'21AAACB1247M1Z1','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000091','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','7/1/2021','120301','ZDOM',NULL,'1061','E','EAST','','','X','P',NULL,'AAACB1247M','7/1/2021','120301'),(41,'81','TATA STEEL BSL LIMITED',NULL,NULL,'. AT: NARENDRAPUR, PO: KUSUPANGA, V,AT: NARENDRAPUR, PO: KUSU',NULL,'DHENKANAL','OR','759121','A',NULL,'21AAACB1247M1Z1','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000091','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','7/1/2021','120301','ZDOM',NULL,'1061','E','EAST','','','X','P',NULL,'AAACB1247M','7/1/2021','120301'),(42,'82','Tata Steel Limited',NULL,NULL,'Bistupur, Dist: East Singhbhum',NULL,'Jamshedpur','JH','831001','B',NULL,'20AAACT2803M2ZO','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000152','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','JH','7763807851','3/23/2022','000534','ZDOM',NULL,'1894','E','EAST','TSLL','06','X','',NULL,'AAACT2803M','3/23/2022','000534'),(43,'82','Tata Steel Limited',NULL,NULL,'. Bistupur, Dist: East Singhbhum,BISTUPUR, DIST: EAST SING',NULL,'JAMSHEDPUR','JH','831001','A',NULL,'20AAACT2803M2ZO','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000152','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','JH','7763807851','3/23/2022','000534','ZDOM',NULL,'1894','E','EAST','TSLL','06','X','',NULL,'AAACT2803M','3/23/2022','000534'),(44,'81','TATA STEEL LTD MEERAMANDLI',NULL,NULL,'MEERAMANDLI',NULL,'DHENKANAL','OR','759121','B',NULL,'21AAACT2803M1ZN','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000171','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','1/14/2022','120301','ZDOM',NULL,'1061','E','EAST','','','X','',NULL,'AAACT2803M','1/14/2022','120301'),(45,'81','TATA STEEL LTD MEERAMANDLI',NULL,NULL,'MEERAMANDLI,MEERAMANDLI',NULL,'DHENKANAL','OR','759121','A',NULL,'21AAACT2803M1ZN','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000171','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','','1/14/2022','120301','ZDOM',NULL,'1061','E','EAST','','','X','',NULL,'AAACT2803M','1/14/2022','120301'),(46,'81','TATA STEEL LIMITED',NULL,NULL,'Central Warehouse (IM Section),',NULL,'JAJPUR','OR','755026','B',NULL,'21AAACT2803M1ZN','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000197','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','9040096116','8/11/2022','120301','ZDOM',NULL,'1806','E','EAST','TSLL','','X','',NULL,'AAACT2803M','8/11/2022','120301'),(47,'81','TATA STEEL LIMITED',NULL,NULL,'Tata Steel Ltd., Baragadia, Duburi.,CENTRAL WAREHOUSE (IM SEC',NULL,'JAJPUR','OR','755026','A',NULL,'21AAACT2803M1ZN','2022-12-22 05:00:06','2022-12-22 05:00:06','0050000197','IN','TATA STEEL LIMITED','Atanu Das','atanu.das1@tatasteelmining.com','East','OR','9040096116','8/11/2022','120301','ZDOM',NULL,'1806','E','EAST','TSLL','','X','',NULL,'AAACT2803M','8/11/2022','120301'),(48,'84','REYNOLDS PENS INDIA PRIVATE LIMITED',NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-30 04:06:50','2022-12-30 04:06:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'84','REYNOLDS PENS INDIA PRIVATE LIMITED',NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','B',NULL,'27AABCR4412R1Z1','2022-12-30 04:06:50','2022-12-30 04:06:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'96',NULL,NULL,NULL,'Universal Business Park 1','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','A',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'96',NULL,NULL,NULL,'Universal Business Park 2','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'96',NULL,NULL,NULL,'Universal Business Park 3','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Mumbai Suburban','Maharashtra','58964','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'96',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'100',NULL,NULL,NULL,'Universal Business Park 1','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','A',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'100',NULL,NULL,NULL,'Universal Business Park 2','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'100',NULL,NULL,NULL,'Universal Business Park 3','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Mumbai Suburban','Maharashtra','58964','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'100',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'106','M/S BILT GRAPHIC PAPER PRODUCTS LIMITED','','','Andhra Bank Employees Co-op Housing Society','Near Doctors Colony','Visakhapatnam','Andhra Pradesh','530013','A',NULL,'37AADCB2230M2ZR','2023-01-30 04:41:32','2023-01-30 04:41:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'106','M/S BILT GRAPHIC PAPER PRODUCTS LIMITED','','','Andhra Bank Employees Co-op Housing Society','Near Doctors Colony','Visakhapatnam','Andhra Pradesh','530013','B',NULL,'37AADCB2230M2ZR','2023-01-30 04:41:32','2023-01-30 04:41:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'107',NULL,NULL,NULL,'Universal Business Park 1','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','A',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'107',NULL,NULL,NULL,'Universal Business Park 2','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Kolkata','West Bengal','700123','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'107',NULL,NULL,NULL,'Universal Business Park 3','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Mumbai Suburban','Maharashtra','58964','B',NULL,'asdf54','2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'107',NULL,NULL,NULL,'Universal Business Park','Chandvli Farm road, off saki viha road','Mumbai Suburban','Maharashtra','400072','A',NULL,'27AABCR4412R1Z1','2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','admin@gmail.com','8777753431','$2y$10$sHhHXHzkBAhXzEVp1Pqn0eKxX/vB55gVypY/9kYKIWkfN2LjAGReG',NULL,'2022-09-07 00:40:26','2022-09-07 00:40:26');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cam_notifications`
--

DROP TABLE IF EXISTS `cam_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'R=Rfq|P=PO',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_notifications`
--

LOCK TABLES `cam_notifications` WRITE;
/*!40000 ALTER TABLE `cam_notifications` DISABLE KEYS */;
INSERT INTO `cam_notifications` VALUES (1,'RFQ has been submitted','RFQ6514','North','3','R',1,'2023-02-14 05:04:59','2023-02-14 05:04:59'),(2,'Sales reply updated','RFQ6514','North','93','R',1,'2023-02-14 05:12:02','2023-02-14 05:12:02'),(3,'Sales manager replyed','RFQ6514','North','75','R',1,'2023-02-14 05:15:17','2023-02-14 05:15:17'),(4,'RFQ has been updated','RFQ6514','North','3','R',1,'2023-02-14 05:18:22','2023-02-14 05:18:22'),(5,'AIT3524, PO has been generated against this','RFQ6514','North','3','R',1,'2023-02-14 05:21:38','2023-02-14 05:21:38'),(6,'AIT9259, PO has been generated against this','RFQ6514','North','3','R',1,'2023-02-14 05:28:18','2023-02-14 05:28:18'),(7,'AIT8089, PO has been generated against this','RFQ6514','North','3','R',1,'2023-02-14 06:01:40','2023-02-14 06:01:40'),(8,'Complaints raised against','AIT8089','North','3','Comp',1,'2023-02-14 06:22:10','2023-02-14 06:22:10'),(9,'RFQ has been submitted','RFQ1438','North','3','R',1,'2023-02-16 01:18:02','2023-02-16 01:18:02'),(10,'Sales reply updated','RFQ1438','North','8','R',1,'2023-02-16 02:29:51','2023-02-16 02:29:51'),(11,'RFQ has been submitted','RFQ8781','North','3','R',1,'2023-02-16 06:05:39','2023-02-16 06:05:39'),(12,'Sales reply updated','RFQ8781','North','8','R',1,'2023-02-16 06:14:06','2023-02-16 06:14:06'),(13,'Sales manager replyed','RFQ8781','North','75','R',1,'2023-02-16 06:22:29','2023-02-16 06:22:29'),(14,'AIT3551, PO has been generated against this','RFQ8781','North','3','R',1,'2023-02-16 06:24:41','2023-02-16 06:24:41'),(15,'Complaints raised against','AIT3551','North','3','Comp',1,'2023-02-16 06:26:10','2023-02-16 06:26:10'),(16,'RFQ has been submitted','RFQ6570','North','3','R',1,'2023-02-17 00:31:11','2023-02-17 00:31:11'),(17,'RFQ has been submitted','RFQ1332','North','3','R',1,'2023-02-17 01:25:06','2023-02-17 01:25:06'),(18,'Sales reply updated','RFQ1332','North','8','R',1,'2023-02-17 03:46:50','2023-02-17 03:46:50'),(19,'Sales reply updated','RFQ6570','North','8','R',1,'2023-02-17 03:57:13','2023-02-17 03:57:13'),(20,'Sales manager replyed','RFQ6570','North','75','R',1,'2023-02-17 04:02:07','2023-02-17 04:02:07'),(21,'RFQ has been submitted','RFQ2677','North','3','R',1,'2023-02-17 04:43:35','2023-02-17 04:43:35'),(22,'Sales reply updated','RFQ2677','North','8','R',1,'2023-02-17 04:46:31','2023-02-17 04:46:31'),(23,'RFQ has been submitted','RFQ5427','North','3','R',1,'2023-02-17 05:15:25','2023-02-17 05:15:25'),(24,'Sales reply updated','RFQ5427','North','8','R',1,'2023-02-17 05:20:15','2023-02-17 05:20:15'),(25,'Sales manager replyed','RFQ5427','North','75','R',1,'2023-02-17 05:23:52','2023-02-17 05:23:52'),(26,'AIT9032, PO has been generated against this','RFQ5427','North','3','R',1,'2023-02-17 05:29:19','2023-02-17 05:29:19'),(27,'AIT9946, PO has been generated against this','RFQ5427','North','3','R',1,'2023-02-17 05:33:25','2023-02-17 05:33:25'),(28,'AIT3037, PO has been generated against this','RFQ5427','North','3','R',1,'2023-02-17 05:38:10','2023-02-17 05:38:10'),(29,'AIT8157, PO has been generated against this','RFQ5427','North','3','R',1,'2023-02-17 05:45:01','2023-02-17 05:45:01'),(30,'AIT4537, PO has been generated against this','RFQ5427','North','3','R',1,'2023-02-17 05:48:08','2023-02-17 05:48:08'),(31,'AIT4445, PO has been generated against this','RFQ5427','North','3','R',1,'2023-02-17 05:55:24','2023-02-17 05:55:24'),(32,'AIT7819, PO has been generated against this','RFQ5427','North','3','R',1,'2023-02-17 05:57:56','2023-02-17 05:57:56');
/*!40000 ALTER TABLE `cam_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_dese` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `is_populer` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=No|2=Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorys_product_id_foreign` (`product_id`),
  CONSTRAINT `categorys_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES (1,'1',1,'High Carbon Ferro Chrome\n','hc-ferrochrome-lumps','HC Ferro Chrome Lumps-LP01-10-50\n','HC Ferro Chrome (Lumps)-1663049774-2912.jpg','HC Ferro Chrome (Lumps)1663049774-4176.jpg','HC Ferro Chrome (Lumps)1663049774-4912.jpg','HC Ferro Chrome (Lumps)1663049774-5147.png',1,1,'2022-09-08 21:55:34','2023-01-19 05:17:56'),(2,NULL,1,'High Carbon Ferro Chrome- Chips & Fines','hc-ferro-chrome-chips','Category description','fecr-fines-1.jpg',NULL,NULL,NULL,2,1,'2022-09-08 21:56:19','2022-09-08 22:29:29'),(4,NULL,2,'Chrome Ore','Chrome Ore','Chrome Ore Decription','Chrome_Ore-1676613571-7126.png','High1666354081-4152.jpg',NULL,NULL,1,1,'2022-09-11 23:40:50','2023-02-17 00:29:31'),(5,NULL,2,'Medium Grade Friable Chrome Ore','medium-grade-friable-chrome-ore','Medium Grade Friable Chrome Ore Decription','Medium_Grade_Friable_Chrome_Ore-1669783940-2771.jpg',NULL,NULL,NULL,2,1,'2022-09-28 00:30:14','2022-11-29 23:22:20');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain_categorys`
--

DROP TABLE IF EXISTS `complain_categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complain_categorys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `com_cate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain_categorys`
--

LOCK TABLES `complain_categorys` WRITE;
/*!40000 ALTER TABLE `complain_categorys` DISABLE KEYS */;
INSERT INTO `complain_categorys` VALUES (1,'Product Complaint',1,'2022-11-03 00:06:34','2022-11-03 00:06:34'),(2,'Service Complaint',1,'2022-11-03 00:06:58','2022-11-03 00:06:58');
/*!40000 ALTER TABLE `complain_categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain_main`
--

DROP TABLE IF EXISTS `complain_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complain_main` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `com_cate_id` bigint(20) unsigned NOT NULL,
  `com_sub_cate_id` bigint(20) unsigned NOT NULL,
  `com_sub_cate_2id` bigint(20) unsigned DEFAULT NULL,
  `com_sub_cate_3id` bigint(20) unsigned DEFAULT NULL,
  `po_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(10) unsigned DEFAULT NULL,
  `closed_status` tinyint(10) NOT NULL DEFAULT '1' COMMENT '1=Open|2=Closed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain_main`
--

LOCK TABLES `complain_main` WRITE;
/*!40000 ALTER TABLE `complain_main` DISABLE KEYS */;
INSERT INTO `complain_main` VALUES (1,1,2,NULL,NULL,'AIT8089','2023-02-14',NULL,3,1,'2023-02-14 06:22:00','2023-02-14 06:22:00'),(2,1,1,NULL,NULL,'AIT3551','2023-02-16',NULL,3,1,'2023-02-16 06:26:00','2023-02-16 06:26:00');
/*!40000 ALTER TABLE `complain_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain_remarks`
--

DROP TABLE IF EXISTS `complain_remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complain_remarks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `complain_id` bigint(20) unsigned NOT NULL,
  `customer_remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kam_remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_com_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kam_com_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kam_com_file_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain_remarks`
--

LOCK TABLES `complain_remarks` WRITE;
/*!40000 ALTER TABLE `complain_remarks` DISABLE KEYS */;
INSERT INTO `complain_remarks` VALUES (1,1,'Hello CAM',NULL,'1774-po_report.pdf',NULL,NULL,'2023-02-14 06:22:00','2023-02-14 06:22:00'),(2,1,NULL,'hello cus, let me chk',NULL,'8950-RenamedFile.pdf','3319-po_report.pdf','2023-02-14 06:25:35','2023-02-14 06:25:35'),(3,2,'In publishing and graphic design, Lorem ipsum is a placehold',NULL,'8863-tata-steel-mining-limited.pdf',NULL,NULL,'2023-02-16 06:26:00','2023-02-16 06:26:00'),(4,2,NULL,'fdfdfdfddd kam',NULL,'1464-po_report-1.pdf','9703-po_report (6).pdf','2023-02-16 06:28:16','2023-02-16 06:28:16');
/*!40000 ALTER TABLE `complain_remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain_sub_categorys`
--

DROP TABLE IF EXISTS `complain_sub_categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complain_sub_categorys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `com_cate_id` bigint(20) unsigned NOT NULL,
  `com_sub_cate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `complain_sub_categorys_com_cate_id_foreign` (`com_cate_id`),
  CONSTRAINT `complain_sub_categorys_com_cate_id_foreign` FOREIGN KEY (`com_cate_id`) REFERENCES `complain_categorys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain_sub_categorys`
--

LOCK TABLES `complain_sub_categorys` WRITE;
/*!40000 ALTER TABLE `complain_sub_categorys` DISABLE KEYS */;
INSERT INTO `complain_sub_categorys` VALUES (1,1,'Chromium',1,'2022-11-03 00:25:32','2022-11-03 00:25:32'),(2,1,'Phos',1,'2022-11-03 00:25:52','2022-11-03 00:25:52'),(3,1,'Size',1,'2022-11-03 00:26:08','2022-11-03 00:26:08'),(4,1,'Others',1,'2022-11-03 00:26:16','2022-11-03 00:26:16'),(5,2,'Packaging',1,'2022-11-03 00:26:16','2022-11-03 00:26:16'),(6,2,'Delivery delay',1,'2022-11-03 00:26:16','2022-11-03 00:26:16'),(7,2,'Weight shortage',1,'2022-11-03 00:26:16','2022-11-03 00:26:16'),(8,2,'Others',1,'2022-11-03 00:26:16','2022-11-03 00:26:16');
/*!40000 ALTER TABLE `complain_sub_categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain_sub_categorys2`
--

DROP TABLE IF EXISTS `complain_sub_categorys2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complain_sub_categorys2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `com_cate_id` bigint(20) unsigned NOT NULL,
  `com_sub_cate_id` bigint(20) unsigned NOT NULL,
  `com_sub_cate2_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `complain_sub_categorys2_com_cate_id_foreign` (`com_cate_id`),
  KEY `complain_sub_categorys2_com_sub_cate_id_foreign` (`com_sub_cate_id`),
  CONSTRAINT `complain_sub_categorys2_com_cate_id_foreign` FOREIGN KEY (`com_cate_id`) REFERENCES `complain_categorys` (`id`) ON DELETE CASCADE,
  CONSTRAINT `complain_sub_categorys2_com_sub_cate_id_foreign` FOREIGN KEY (`com_sub_cate_id`) REFERENCES `complain_sub_categorys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain_sub_categorys2`
--

LOCK TABLES `complain_sub_categorys2` WRITE;
/*!40000 ALTER TABLE `complain_sub_categorys2` DISABLE KEYS */;
INSERT INTO `complain_sub_categorys2` VALUES (1,1,1,'Damaged item',1,'2022-11-03 00:43:32','2022-11-03 00:43:32'),(2,1,1,'Incorrect item',1,'2022-11-03 00:43:55','2022-11-03 00:43:55'),(3,1,2,'Damaged item',1,'2022-11-03 00:44:05','2022-11-03 00:44:05'),(4,1,2,'Incorrect item',1,'2022-11-03 00:44:09','2022-11-03 00:44:09'),(5,1,3,'Incorrect item',1,'2022-11-03 00:44:55','2022-11-03 00:44:55'),(6,1,3,'Damaged item',1,'2022-11-03 00:44:59','2022-11-03 00:44:59'),(7,1,4,'Damaged item',1,'2022-11-03 00:45:03','2022-11-03 00:45:03'),(8,1,4,'Incorrect item',1,'2022-11-03 00:45:10','2022-11-03 00:45:10');
/*!40000 ALTER TABLE `complain_sub_categorys2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain_sub_categorys3`
--

DROP TABLE IF EXISTS `complain_sub_categorys3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complain_sub_categorys3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `com_cate_id` bigint(20) unsigned NOT NULL,
  `com_sub_cate_id` bigint(20) unsigned NOT NULL,
  `com_sub_cate_2id` bigint(20) unsigned NOT NULL,
  `com_sub_cate3_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `complain_sub_categorys3_com_cate_id_foreign` (`com_cate_id`),
  KEY `complain_sub_categorys3_com_sub_cate_id_foreign` (`com_sub_cate_id`),
  KEY `complain_sub_categorys3_com_sub_cate_2id_foreign` (`com_sub_cate_2id`),
  CONSTRAINT `complain_sub_categorys3_com_cate_id_foreign` FOREIGN KEY (`com_cate_id`) REFERENCES `complain_categorys` (`id`) ON DELETE CASCADE,
  CONSTRAINT `complain_sub_categorys3_com_sub_cate_2id_foreign` FOREIGN KEY (`com_sub_cate_2id`) REFERENCES `complain_sub_categorys2` (`id`) ON DELETE CASCADE,
  CONSTRAINT `complain_sub_categorys3_com_sub_cate_id_foreign` FOREIGN KEY (`com_sub_cate_id`) REFERENCES `complain_sub_categorys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain_sub_categorys3`
--

LOCK TABLES `complain_sub_categorys3` WRITE;
/*!40000 ALTER TABLE `complain_sub_categorys3` DISABLE KEYS */;
INSERT INTO `complain_sub_categorys3` VALUES (1,1,1,1,'com_sub_cate3_name_A',1,'2022-11-03 00:59:12','2022-11-03 00:59:12'),(2,1,2,2,'com_sub_cate3_name_B',1,'2022-11-03 00:59:44','2022-11-03 00:59:44'),(3,2,2,2,'com_sub_cate3_name_C',1,'2022-11-03 01:01:12','2022-11-03 01:01:12'),(4,2,2,2,'com_sub_cate3_name_D',1,'2022-11-03 01:01:22','2022-11-03 01:01:22'),(5,2,3,2,'com_sub_cate3_name_E',1,'2022-11-03 01:02:12','2022-11-03 01:02:12'),(6,2,4,2,'com_sub_cate3_name_F',1,'2022-11-03 01:02:27','2022-11-03 01:02:27');
/*!40000 ALTER TABLE `complain_sub_categorys3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_manage`
--

DROP TABLE IF EXISTS `complaint_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_manage` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kam_id` bigint(20) unsigned NOT NULL,
  `complain_id` bigint(20) unsigned NOT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depa_id` bigint(20) unsigned DEFAULT NULL,
  `r_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ka_remarks` text COLLATE utf8mb4_unicode_ci,
  `is_mail_resiv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0=No|1=Yes',
  `interim_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `financial_set_repo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_approval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marketing_head_approval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sr_gm_approval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `financial_approval_op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_manage`
--

LOCK TABLES `complaint_manage` WRITE;
/*!40000 ALTER TABLE `complaint_manage` DISABLE KEYS */;
INSERT INTO `complaint_manage` VALUES (1,5,1,'AIT8089',1,'arun.sarkar@beas.co.in','dhgdjhdfjhgdfggfgfbnvdgf   cvcvcvcvcvcvcvcvcvcvcvcvcvcvcvcvcv',1,'5866-REGIS (1).txt',NULL,'8708-RenamedFile.pdf','1036-1675408917sc.xlsx','6530-REGIS.txt','5769-REGIS (1).txt',NULL,NULL,'2023-02-14 06:26:13','2023-02-14 06:28:10'),(2,110,2,'AIT3551',1,'arun.sarkar@beas.co.in','test',1,'1344-po_report-1.pdf','3567-po_report (14).pdf','3144-po_report (6).pdf','6483-tsml_term_and_condition.pdf',NULL,NULL,NULL,NULL,'2023-02-16 06:29:11','2023-02-16 06:30:11');
/*!40000 ALTER TABLE `complaint_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus_notifications`
--

DROP TABLE IF EXISTS `cus_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'R=Rfq|P=PO',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_notifications`
--

LOCK TABLES `cus_notifications` WRITE;
/*!40000 ALTER TABLE `cus_notifications` DISABLE KEYS */;
INSERT INTO `cus_notifications` VALUES (1,'RFQ has been submitted','RFQ6514','3','3','R',2,'2023-02-14 05:04:59','2023-02-16 05:59:26'),(2,'RFQ has been updated','RFQ6514','3','5','R',2,'2023-02-14 05:08:54','2023-02-16 05:59:26'),(3,'RFQ has been updated','RFQ6514','3','5','R',2,'2023-02-14 05:13:12','2023-02-16 05:59:26'),(4,'RFQ has been updated','RFQ6514','3','5','R',2,'2023-02-14 05:19:30','2023-02-16 05:59:26'),(5,'Customer PO No. generated','CUS2023','3','5','P',2,'2023-02-14 06:07:21','2023-02-16 05:59:26'),(6,'Complaint replayed','AIT8089','3','5','Comp',2,'2023-02-14 06:25:35','2023-02-16 05:59:26'),(7,'RFQ has been submitted','RFQ6298','3','3','R',2,'2023-02-16 00:59:11','2023-02-16 05:59:26'),(8,'RFQ has been submitted','RFQ1438','3','3','R',2,'2023-02-16 01:18:02','2023-02-16 05:59:26'),(9,'RFQ has been submitted','RFQ9484','3','3','R',2,'2023-02-16 01:44:47','2023-02-16 05:59:26'),(10,'RFQ has been updated','RFQ1438','3','5','R',2,'2023-02-16 02:15:20','2023-02-16 05:59:26'),(11,'RFQ has been submitted','RFQ4477','3','3','R',2,'2023-02-16 05:47:27','2023-02-16 05:59:26'),(12,'RFQ has been submitted','RFQ8781','3','3','R',1,'2023-02-16 06:05:39','2023-02-16 06:05:39'),(13,'RFQ has been updated','RFQ8781','3','5','R',1,'2023-02-16 06:07:44','2023-02-16 06:07:44'),(14,'RFQ has been updated','RFQ8781','3','110','R',1,'2023-02-16 06:21:59','2023-02-16 06:21:59'),(15,'RFQ has been updated','RFQ8781','3','110','R',1,'2023-02-16 06:22:56','2023-02-16 06:22:56'),(16,'Complaint replayed','AIT3551','3','110','Comp',1,'2023-02-16 06:28:16','2023-02-16 06:28:16'),(17,'RFQ has been submitted','RFQ6570','3','3','R',1,'2023-02-17 00:31:11','2023-02-17 00:31:11'),(18,'RFQ has been updated','RFQ1438','3','110','R',1,'2023-02-17 01:22:16','2023-02-17 01:22:16'),(19,'RFQ has been submitted','RFQ1332','3','3','R',1,'2023-02-17 01:25:06','2023-02-17 01:25:06'),(20,'RFQ has been updated','RFQ1332','3','110','R',1,'2023-02-17 01:47:13','2023-02-17 01:47:13'),(21,'RFQ has been updated','RFQ6570','3','110','R',1,'2023-02-17 03:56:27','2023-02-17 03:56:27'),(22,'RFQ has been updated','RFQ6570','3','110','R',1,'2023-02-17 03:58:27','2023-02-17 03:58:27'),(23,'RFQ has been updated','RFQ6570','3','110','R',1,'2023-02-17 04:04:00','2023-02-17 04:04:00'),(24,'RFQ has been submitted','RFQ2677','3','3','R',1,'2023-02-17 04:43:36','2023-02-17 04:43:36'),(25,'RFQ has been updated','RFQ2677','3','110','R',1,'2023-02-17 04:44:39','2023-02-17 04:44:39'),(26,'RFQ has been submitted','RFQ5427','3','3','R',1,'2023-02-17 05:15:26','2023-02-17 05:15:26'),(27,'RFQ has been updated','RFQ5427','3','110','R',1,'2023-02-17 05:18:16','2023-02-17 05:18:16'),(28,'RFQ has been updated','RFQ5427','3','110','R',1,'2023-02-17 05:21:46','2023-02-17 05:21:46'),(29,'RFQ has been updated','RFQ5427','3','110','R',1,'2023-02-17 05:25:28','2023-02-17 05:25:28');
/*!40000 ALTER TABLE `cus_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `CustCode` varchar(255) DEFAULT NULL,
  `Cnty` varchar(255) DEFAULT NULL,
  `NAME1` int(11) NOT NULL,
  `ORT01` int(11) NOT NULL,
  `PSTLZ` int(11) NOT NULL,
  `REGIO` int(11) NOT NULL,
  `STRAS` int(11) NOT NULL,
  `TELF1` int(11) NOT NULL,
  `EmailID` int(11) NOT NULL,
  `ERDAT` int(11) NOT NULL,
  `ERNAM` int(11) NOT NULL,
  `Order Type` int(11) NOT NULL,
  `LIFNR` int(11) NOT NULL,
  `CITYC` int(11) NOT NULL,
  `SPRAS` int(11) NOT NULL,
  `TELF2` int(11) NOT NULL,
  `LZONE` int(11) NOT NULL,
  `VBUND` int(11) NOT NULL,
  `GFORM` int(11) NOT NULL,
  `DUEFL` int(11) NOT NULL,
  `KDKG2` int(11) NOT NULL,
  `STCD3` int(11) NOT NULL,
  `KNURL` int(11) NOT NULL,
  `J_1IPANNO` int(11) NOT NULL,
  `AEDAT` int(11) NOT NULL,
  `USNAM` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_productions`
--

DROP TABLE IF EXISTS `daily_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_productions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `met_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `met_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `met_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fg_sap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_productions`
--

LOCK TABLES `daily_productions` WRITE;
/*!40000 ALTER TABLE `daily_productions` DISABLE KEYS */;
INSERT INTO `daily_productions` VALUES (1,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','A','DESCRIPTION','1234','23kjh','10-150','600','65','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(2,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','B','DESCRIPTION','1254lk','458ljkuj','10-150','650','15','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(3,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','C','DESCRIPTION','JHDFJ','JHDFJ','10-150','500','500','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(4,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','D','DESCRIPTION','DCC254','DCC254','10-150','524','524','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(5,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','E','DESCRIPTION','DSDV35','DSDV35','10-150','2145','2145','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(6,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','F','DESCRIPTION','SDVSV','SDVSV','10-150','236','236','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(7,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','G','DESCRIPTION','WETYWD','WETYWD','10-100','358','358','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(8,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','H','DESCRIPTION','565XDSD','565XDSD','10-100','9554','9554','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(9,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','I','DESCRIPTION','EDW55','EDW55','10-100','2145','2145','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(10,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','J','DESCRIPTION','DW655','DW655','10-100','565','565','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(11,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','K','DESCRIPTION','EEDSD2','EEDSD2','10-100','255','255','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50'),(12,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','L','DESCRIPTION','EWEFSA2','EWEFSA2','10-100','25585','25585','2022-11-23','0000-00-00',0,'2022-11-22 23:58:50','2022-11-22 23:58:50');
/*!40000 ALTER TABLE `daily_productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delete_remarks`
--

DROP TABLE IF EXISTS `delete_remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delete_remarks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kam_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sche_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delete_remarks`
--

LOCK TABLES `delete_remarks` WRITE;
/*!40000 ALTER TABLE `delete_remarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `delete_remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_methods`
--

DROP TABLE IF EXISTS `delivery_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `methods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_methods`
--

LOCK TABLES `delivery_methods` WRITE;
/*!40000 ALTER TABLE `delivery_methods` DISABLE KEYS */;
INSERT INTO `delivery_methods` VALUES (1,'DAP (Delivered at Place)',NULL,1,NULL,NULL),(2,'Ex-Works',NULL,1,NULL,NULL),(3,'Ex-Depot',NULL,2,NULL,NULL);
/*!40000 ALTER TABLE `delivery_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_orders`
--

DROP TABLE IF EXISTS `delivery_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) DEFAULT NULL,
  `plant_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `material_grade` bigint(20) unsigned DEFAULT NULL COMMENT 'sub_category_id',
  `do_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `despatch_date` datetime DEFAULT NULL,
  `truck_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `premarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lr_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_waybill_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_certificate_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_invoice_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc_doc_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_orders`
--

LOCK TABLES `delivery_orders` WRITE;
/*!40000 ALTER TABLE `delivery_orders` DISABLE KEYS */;
INSERT INTO `delivery_orders` VALUES (1,76,'76','SO999','DO222','YJF5456','2022-12-30 00:00:00',3,'50','2022-12-31 00:00:00','RTU68542','97887645','YTY JGHJGB KHK','2920-G3.png','5641-banner1.png','3838-po_report (1).pdf','2033-po_report (1).pdf',NULL,'2022-12-28 07:22:39','2022-12-28 07:22:39'),(5,76,'76','SO999','DO9988','INVO652','2022-12-31 00:00:00',3,'40','2023-01-01 00:00:00','WT5792','985654126','Hello Please check it again','1283-po_report (1).pdf','4261-G3.png','2544-banner1.png','1595-banner1.png','6634-Generated.pdf','2022-12-30 02:23:00','2022-12-30 02:23:00'),(7,76,'76','SO2222','DO3366','INV8899','2023-01-05 00:00:00',1,'100','2023-01-12 00:00:00','WB9856','98989556','Hello hi','3414-checklist.png','5748-order-delivery.png','7621-delivered.png','9848-G3.png',NULL,'2023-01-03 07:34:25','2023-01-03 07:34:25');
/*!40000 ALTER TABLE `delivery_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `depa_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depa_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Sales Manager','Sales Manager',NULL,NULL),(2,'Regional Manager ','Regional Manager ',NULL,NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_mail`
--

DROP TABLE IF EXISTS `department_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `depa_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_mail`
--

LOCK TABLES `department_mail` WRITE;
/*!40000 ALTER TABLE `department_mail` DISABLE KEYS */;
INSERT INTO `department_mail` VALUES (1,'2','amitbeas17@gmail.com',NULL,NULL),(2,'2','srvmondal88@gmail.com',NULL,NULL),(3,'1','subrata.mukherjee@beas.co.in',NULL,NULL),(4,'1','arun.sarkar@beas.co.in',NULL,NULL);
/*!40000 ALTER TABLE `department_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatch_plans`
--

DROP TABLE IF EXISTS `dispatch_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispatch_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ds_qty` decimal(9,2) NOT NULL,
  `ds_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch_plans`
--

LOCK TABLES `dispatch_plans` WRITE;
/*!40000 ALTER TABLE `dispatch_plans` DISABLE KEYS */;
INSERT INTO `dispatch_plans` VALUES (1,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',10.00,'2022-11-01',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(2,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',50.00,'2022-11-02',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(3,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',10.00,'2022-11-03',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(4,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',25.00,'2022-11-04',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(5,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',30.00,'2022-11-05',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(6,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',35.00,'2022-11-06',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(7,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',36.00,'2022-11-07',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(8,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',41.00,'2022-11-08',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(9,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',26.00,'2022-11-09',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(10,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',36.00,'2022-11-10',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(11,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',35.00,'2022-11-01',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(12,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',20.00,'2022-11-02',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(13,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',10.00,'2022-11-03',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(14,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',50.00,'2022-11-04',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(15,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',15.00,'2022-11-05',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(16,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',25.00,'2022-11-06',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(17,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',30.00,'2022-11-07',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(18,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',35.00,'2022-11-08',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(19,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',36.00,'2022-11-09',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(20,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',41.00,'2022-11-10',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(21,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',26.00,'2022-11-11',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(22,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',36.00,'2022-11-12',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(23,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',35.00,'2022-11-01',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(24,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',10.00,'2022-11-02',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(25,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',50.00,'2022-11-03',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(26,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',10.00,'2022-11-04',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(27,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',25.00,'2022-11-05',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(28,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',30.00,'2022-11-06',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(29,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',35.00,'2022-11-07',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(30,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',36.00,'2022-11-08',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(31,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',41.00,'2022-11-09',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(32,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',26.00,'2022-11-10',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(33,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',36.00,'2022-11-11',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(34,'FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',35.00,'2022-11-12',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(35,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',20.00,'2022-11-01',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(36,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',10.00,'2022-11-02',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(37,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',50.00,'2022-11-03',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(38,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',15.00,'2022-11-04',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(39,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',25.00,'2022-11-05',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(40,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',30.00,'2022-11-06',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(41,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',35.00,'2022-11-07',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(42,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',36.00,'2022-11-08',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(43,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',41.00,'2022-11-09',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(44,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',26.00,'2022-11-10',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(45,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',36.00,'2022-11-11',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(46,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-100',35.00,'2022-11-12',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(47,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',10.00,'2022-11-01',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(48,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',10.00,'2022-11-02',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(49,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',50.00,'2022-11-03',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(50,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',10.00,'2022-11-04',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(51,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',25.00,'2022-11-05',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(52,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',30.00,'2022-11-06',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(53,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',35.00,'2022-11-07',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(54,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',36.00,'2022-11-08',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(55,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',41.00,'2022-11-09',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(56,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',26.00,'2022-11-10',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(57,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',36.00,'2022-11-11',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(58,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Lumps)','10-100',35.00,'2022-11-12',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(59,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',20.00,'2022-11-01',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(60,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',10.00,'2022-11-02',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(61,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',50.00,'2022-11-03',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(62,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',15.00,'2022-11-04',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(63,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',25.00,'2022-11-05',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(64,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-150',30.00,'2022-11-06',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(65,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',35.00,'2022-11-07',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(66,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',36.00,'2022-11-08',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(67,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',41.00,'2022-11-09',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(68,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',26.00,'2022-11-10',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(69,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',36.00,'2022-11-11',0,'2022-11-23 00:07:57','2022-11-23 00:07:57'),(70,'FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Fines)','10-100',35.00,'2022-11-12',0,'2022-11-23 00:07:57','2022-11-23 00:07:57');
/*!40000 ALTER TABLE `dispatch_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freights`
--

DROP TABLE IF EXISTS `freights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pickup_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destation_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freight_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive|3=Delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freights`
--

LOCK TABLES `freights` WRITE;
/*!40000 ALTER TABLE `freights` DISABLE KEYS */;
INSERT INTO `freights` VALUES (1,'PLANT','West Bengal','Odisha','3500',1,'2022-09-22 02:02:10','2022-09-22 07:03:34'),(2,'PORT','West Bengal','Odisha','3500',1,'2022-09-22 02:11:01','2022-11-08 02:24:23'),(3,'DEPOT','West Bengal','Odisha','3500',1,'2022-09-22 02:11:35','2022-09-22 02:11:35'),(4,'PLANT','Odisha','West Bengal','3500',1,'2022-09-22 06:51:36','2022-09-22 06:51:36'),(5,'PORT','Odisha','West Bengal','3500',1,'2022-10-20 18:30:00','2022-11-08 02:24:16'),(6,'DEPOT','Odisha','West Bengal','3500',1,'2022-10-20 18:30:00','2022-11-08 02:18:03'),(7,'PLANT','Uttar Pradesh','Odisha','70000',1,'2022-10-20 18:30:00','2022-11-08 02:24:12'),(8,'PORT','Uttar Pradesh','Odisha','60000',1,'2022-10-20 18:30:00','2022-11-08 02:24:19'),(9,'DEPOT','Uttar Pradesh','Odisha','90000',1,'2022-10-20 18:30:00','2022-11-08 02:24:05'),(10,'PLANT','Odisha','Uttar Pradesh','50000',1,'2022-10-20 18:30:00','2022-11-08 02:24:09'),(11,'PORT','Odisha','Uttar Pradesh','70000',1,'2022-10-20 18:30:00','2022-11-01 04:01:15'),(12,'DEPOT','Odisha','Uttar Pradesh','60000',1,'2022-11-08 02:27:06','2022-11-08 02:27:06'),(13,'PLANT','Uttar Pradesh','West Bengal','80000',1,'2022-11-08 02:28:13','2022-11-08 02:28:13'),(14,'PORT','Uttar Pradesh','West Bengal','52000',1,'2022-11-08 03:31:52','2022-11-08 03:31:52'),(15,'DEPOT','Uttar Pradesh','West Bengal','80000',1,'2022-11-09 00:10:30','2022-11-09 00:10:30'),(16,'PLANT','West Bengal','Uttar Pradesh','70000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(17,'PORT','West Bengal','Uttar Pradesh','70000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(18,'DEPOT','West Bengal','Uttar Pradesh','100000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(19,'PLANT','Jaipur','Vizianagram','120000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(20,'PORT','Jaipur','Vizianagram','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(21,'DEPOT','Jaipur','Vizianagram','90000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(22,'PLANT','Jaipur','Raigarh','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(23,'PORT','Jaipur','Raigarh','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(24,'DEPOT','Jaipur','Raigarh','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(25,'PLANT','Odisha','Odisha','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(26,'PORT','Jaipur','Raipur','70000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(27,'DEPOT','Jaipur','Raipur','90000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(28,'PLANT','Jaipur','Kalol','120000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(29,'PORT','Jaipur','Kalol','120000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(30,'DEPOT','Jaipur','Kalol','90000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(31,'PORT','Jaipur','Raigarh','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(32,'DEPOT','Jaipur','Raigarh','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(34,'PORT','Odisha','Odisha','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(35,'DEPOT','Odisha','Odisha','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(36,'PLANT','Chhattisagarh','Chhattisagarh','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(37,'PORT','Chhattisagarh','Chhattisagarh','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(38,'DEPOT','Chhattisagarh','Chhattisagarh','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(39,'PLANT','West Bengal','West Bengal','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(40,'PORT','West Bengal','West Bengal','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(41,'DEPOT','West Bengal','West Bengal','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(42,'PLANT','Chhattisagarh','West Bengal','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(43,'PORT','Chhattisagarh','West Bengal','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(44,'DEPOT','Chhattisagarh','West Bengal','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(45,'PLANT','West Bengal','Chhattisagarh','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(46,'PORT','West Bengal','Chhattisagarh','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(47,'DEPOT','West Bengal','Chhattisagarh','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(48,'PLANT','Chhattisagarh','Odisha','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(49,'PORT','Chhattisagarh','Odisha','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(50,'DEPOT','Chhattisagarh','Odisha','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(51,'PLANT','Odisha','Chhattisagarh','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(52,'PORT','Odisha','Chhattisagarh','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(53,'DEPOT','Odisha','Chhattisagarh','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(54,'PLANT','Odisha','Haryana','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(55,'PORT','Odisha','Haryana','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(56,'DEPOT','Odisha','Haryana','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(57,'PLANT','Chhattisagarh','Haryana','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(58,'PORT','Chhattisagarh','Haryana','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(59,'DEPOT','Chhattisagarh','Haryana','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(60,'PLANT','West Bengal','Haryana','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(61,'PORT','West Bengal','Haryana','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(62,'DEPOT','West Bengal','Haryana','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(63,'PLANT','Andhra Pradesh','Haryana','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(64,'PORT','Andhra Pradesh','Haryana','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(65,'DEPOT','Andhra Pradesh','Haryana','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(66,'PLANT','Maharashtra','Haryana','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(67,'PORT','Maharashtra','Haryana','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(68,'DEPOT','Maharashtra','Haryana','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(69,'PLANT','Maharashtra','West Bengal','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(70,'PORT','Maharashtra','West Bengal','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(71,'DEPOT','Maharashtra','West Bengal','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(72,'PLANT','Maharashtra','Odisha','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(73,'PORT','Maharashtra','Odisha','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(74,'DEPOT','Maharashtra','Odisha','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(75,'PLANT','Maharashtra','Chhattisagarh','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(76,'PORT','Maharashtra','Chhattisagarh','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(77,'DEPOT','Maharashtra','Chhattisagarh','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(78,'PLANT','Andhra Pradesh','West Bengal','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(79,'PORT','Andhra Pradesh','West Bengal','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(80,'DEPOT','Andhra Pradesh','West Bengal','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(81,'PLANT','Andhra Pradesh','Odisha','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(82,'PORT','Andhra Pradesh','Odisha','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(83,'DEPOT','Andhra Pradesh','Odisha','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(84,'PLANT','Andhra Pradesh','Chhattisagarh','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(85,'PORT','Andhra Pradesh','Chhattisagarh','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(86,'DEPOT','Andhra Pradesh','Chhattisagarh','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(87,'PLANT','Haryana','Haryana','6000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(88,'PORT','Haryana','Haryana','7500',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(89,'DEPOT','Haryana','Haryana','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(90,'PLANT','Haryana','Odisha','6000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(91,'PORT','Haryana','Odisha','7500',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(92,'DEPOT','Haryana','Odisha','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(93,'PLANT','Haryana','Chhattisagarh','6000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(94,'PORT','Haryana','Chhattisagarh','7500',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(95,'DEPOT','Haryana','Chhattisagarh','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(96,'PLANT','Haryana','West Bengal','6000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(97,'PORT','Haryana','West Bengal','7500',3,'2022-11-14 18:30:00','2023-01-05 06:50:53'),(98,'DEPOT','Haryana','West Bengal','8000',3,'2022-11-14 18:30:00','2023-01-05 06:50:45'),(99,'MINES','Odisha','West Bengal','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(100,'MINES','Odisha','Haryana','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(101,'MINES','Odisha','Chhattisagarh','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(102,'MINES','Odisha','Odisha','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(104,'MINES','Odisha','Raigarh','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(105,'MINES','Odisha','Kalol','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(106,'MINES','Odisha','Raipur','8000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(107,'MINES','Odisha','Vizianagram','8000',3,'2022-11-14 18:30:00','2023-01-06 05:34:21'),(108,'MINES','Odisha','Uttar Pradesh','8000',3,'2022-11-14 18:30:00','2023-01-05 06:50:35'),(113,'PLANT','Maharashtra','Maharashtra','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(114,'PORT','Maharashtra','Maharashtra','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(115,'DEPOT','Maharashtra','Maharashtra','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(116,'PLANT','West Bengal','Maharashtra','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(117,'PORT','West Bengal','Maharashtra','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(118,'DEPOT','West Bengal','Maharashtra','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(120,'PLANT','Odisha','Maharashtra','60000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(121,'PORT','Odisha','Maharashtra','75000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00'),(122,'DEPOT','Odisha','Maharashtra','80000',1,'2022-11-14 18:30:00','2022-11-14 18:30:00');
/*!40000 ALTER TABLE `freights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (18,'2022_08_29_090439_create_kyc_table',1),(19,'2022_08_29_090803_create_address_table',1),(20,'2022_08_29_091148_create_documents_table',1),(32,'2014_10_12_000000_create_users_table',2),(33,'2014_10_12_100000_create_password_resets_table',2),(34,'2022_08_29_102333_create_category_table',2),(35,'2022_08_29_102810_create_sub_category_table',2),(37,'2022_08_29_110430_create_product_image_table',2),(38,'2022_08_30_110040_create_admins_table',2),(39,'2022_08_29_105404_create_product_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_production_plans`
--

DROP TABLE IF EXISTS `monthly_production_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_production_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `plant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_stk` decimal(19,2) NOT NULL,
  `mnthly_prod` decimal(19,2) NOT NULL,
  `export` decimal(9,2) NOT NULL,
  `offline` decimal(9,2) NOT NULL,
  `sap_order` decimal(9,2) NOT NULL,
  `fg_sap` decimal(9,2) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_production_plans`
--

LOCK TABLES `monthly_production_plans` WRITE;
/*!40000 ALTER TABLE `monthly_production_plans` DISABLE KEYS */;
INSERT INTO `monthly_production_plans` VALUES (1,'2022-11-23','0000-00-00','FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',700.00,165.00,225.00,315.00,552.00,NULL,2,'2022-11-22 23:58:27','2022-11-22 23:58:27'),(2,'2022-11-23','0000-00-00','FAP ATHGARH','Ferro Chrome','HC Ferro Chrome (Chips)','10-150',750.00,115.00,235.00,345.00,526.00,NULL,2,'2022-11-22 23:58:27','2022-11-22 23:58:27'),(3,'2022-11-23','0000-00-00','FAP GOPALPUR','Ferro Chrome','HC Ferro Chrome (Lumps)','10-150',760.00,115.00,227.00,355.00,536.00,NULL,2,'2022-11-22 23:58:27','2022-11-22 23:58:27');
/*!40000 ALTER TABLE `monthly_production_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (4,1,'admin news','9.1.1 High Carbon Ferrochrome and Its Production Base 90%$#@ 55454 dfhgfghdvfbnvcghfghvfvff &*(%','1663148238-8752.jpg','2022-09-14 04:07:18','2022-09-14 04:07:18'),(5,1,'admin news 2','9.1.1 High Carbon Ferrochrome and Its Production Base 90%$#@ 55454 dfhgfghdvfbnvcghfghvfvff &*(%','1663148677-2749.jpg','2022-09-14 04:14:37','2022-09-14 04:14:37');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opt_notification`
--

DROP TABLE IF EXISTS `opt_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opt_notification` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'R=Rfq|P=PO',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opt_notification`
--

LOCK TABLES `opt_notification` WRITE;
/*!40000 ALTER TABLE `opt_notification` DISABLE KEYS */;
INSERT INTO `opt_notification` VALUES (1,'Do created sussessfully','3333AB','76','DO',1,'2022-12-28 02:10:07','2022-12-28 02:10:07'),(2,'Do created sussessfully new','4533AB','76','DO',1,'2022-12-28 02:10:35','2022-12-28 02:10:35');
/*!40000 ALTER TABLE `opt_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_po_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amdnt_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letterhead` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'AIT8089','CUS2023','RFQ6514','AIT8089/22','1','1676374640po_reporta.pdf','2023-02-14','2023-02-14 06:01:42','2023-02-14 06:21:22'),(2,'AIT3551',NULL,'RFQ8781',NULL,'2','1676548481po_reporta.pdf','2023-02-16','2023-02-16 06:24:41','2023-02-16 06:24:41'),(5,'AIT7819',NULL,'RFQ5427',NULL,'2','','2023-02-17','2023-02-17 05:57:56','2023-02-17 05:57:56');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_verifications`
--

DROP TABLE IF EXISTS `otp_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp_verifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `mob_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Unverified|2=Verified',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `otp_verifications_user_id_foreign` (`user_id`),
  CONSTRAINT `otp_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_verifications`
--

LOCK TABLES `otp_verifications` WRITE;
/*!40000 ALTER TABLE `otp_verifications` DISABLE KEYS */;
INSERT INTO `otp_verifications` VALUES (2,NULL,'8981945532',NULL,'341399',1,'2022-09-09 04:11:44','2022-09-09 04:11:44'),(3,NULL,'7033025503',NULL,'547847',1,'2022-09-09 08:47:12','2022-09-09 08:47:12'),(4,NULL,'8210959350',NULL,'767834',1,'2022-09-10 03:22:07','2022-09-10 03:22:07'),(5,NULL,'8477354366',NULL,'213372',1,'2022-09-10 03:25:37','2022-09-10 03:25:37'),(6,NULL,'8632525377',NULL,'138537',1,'2022-09-10 03:26:57','2022-09-10 03:26:57'),(7,NULL,'7873537333',NULL,'151055',1,'2022-09-10 03:29:41','2022-09-10 03:29:41'),(8,NULL,'8473647467',NULL,'177487',1,'2022-09-10 03:31:02','2022-09-10 03:31:02'),(9,NULL,'8473647466',NULL,'746209',1,'2022-09-10 03:31:51','2022-09-10 03:31:51'),(10,NULL,'8347334263',NULL,'335359',1,'2022-09-10 03:40:32','2022-09-10 03:40:32'),(11,NULL,'7033025533',NULL,'584558',1,'2022-09-10 03:47:11','2022-09-10 03:47:11'),(12,NULL,'9036345663',NULL,'',2,'2022-09-10 03:54:09','2022-09-10 03:54:19'),(13,NULL,'7343546353',NULL,'',2,'2022-09-10 04:30:38','2022-09-10 04:30:48'),(14,NULL,'8743643743',NULL,'',2,'2022-09-10 05:06:53','2022-09-10 05:07:08'),(15,NULL,'8733367749',NULL,'431678',1,'2022-09-10 05:09:49','2022-09-10 05:09:49'),(16,NULL,'8743467243',NULL,'',2,'2022-09-10 05:10:49','2022-09-10 05:11:05'),(17,NULL,'8982565230',NULL,'985027',1,'2022-09-12 00:33:10','2022-09-12 00:33:10'),(18,NULL,'8956214521',NULL,'',2,'2022-09-12 06:41:57','2022-09-12 06:42:02'),(19,NULL,'8464374734',NULL,'',2,'2022-09-13 06:25:21','2022-09-13 06:25:31'),(20,NULL,'9777753431',NULL,'',2,'2022-09-23 07:00:53','2022-09-23 07:01:01'),(21,NULL,'9777753432',NULL,'',2,'2022-09-26 00:38:08','2022-09-26 00:38:27'),(22,NULL,'9885666456',NULL,'245884',1,'2022-10-10 07:29:19','2022-10-10 07:29:19'),(23,NULL,'9887645646',NULL,'840116',1,'2022-10-10 07:41:13','2022-10-10 07:41:13'),(24,NULL,'8754564564',NULL,'',2,'2022-10-10 07:42:04','2022-10-10 07:42:11'),(25,NULL,'7033025333',NULL,'',2,'2022-10-20 01:14:24','2022-10-20 01:14:36'),(26,NULL,'3454675464',NULL,'436090',1,'2022-10-22 03:48:39','2022-10-22 03:48:39'),(27,NULL,'7654454654',NULL,'550615',1,'2022-10-22 03:49:29','2022-10-22 03:49:29'),(28,NULL,'8516326362',NULL,'',2,'2022-10-26 06:05:52','2022-10-26 06:05:58'),(29,NULL,'1234567890',NULL,'694272',1,'2022-10-30 06:25:28','2022-10-30 06:25:28'),(30,NULL,'8788667578',NULL,'',2,'2022-11-02 03:18:10','2022-11-02 03:18:22'),(31,NULL,'9163348101',NULL,'',2,'2022-11-09 03:05:56','2022-11-09 03:06:10'),(32,NULL,'9911344606',NULL,'',2,'2022-11-10 02:26:21','2022-11-10 02:26:39'),(33,NULL,'9678686756',NULL,'827795',1,'2022-12-07 01:05:20','2022-12-07 01:05:20'),(34,NULL,'7033025503','ranajoy.bose13@gmail.com','',2,'2023-01-13 05:29:18','2023-01-13 05:37:36'),(45,NULL,'7033025503','aksteen16@gmail.com','',2,'2023-01-13 07:55:09','2023-01-13 07:55:40'),(46,NULL,'7033025533','aksteen16@gmail.com','',2,'2023-01-17 04:59:12','2023-01-17 05:00:04'),(47,NULL,'6058845663','abc@gmail.com','',2,'2023-01-19 23:36:08','2023-01-20 00:04:31'),(48,NULL,'7033025503','cde@gmail.com','984983',1,'2023-01-20 00:13:09','2023-01-20 00:13:09'),(49,NULL,'7033025503','srvmondal88@gmail.com','',2,'2023-01-20 05:14:57','2023-01-20 05:15:44'),(50,NULL,'7033025504','sourav.mondal@beas.co.in','809125',1,'2023-01-24 00:36:27','2023-01-24 00:36:27'),(52,NULL,'7033025505','sourav.mondal@beas.co.in','',2,'2023-01-24 01:06:34','2023-01-24 01:07:22'),(53,NULL,'7033025508','sourav.mondal@beas.co.in','',2,'2023-01-24 01:08:59','2023-01-24 01:09:38'),(54,NULL,'7033025509','sourav.mondal@beas.co.in','',2,'2023-01-24 01:23:21','2023-01-24 01:24:58'),(55,NULL,'7033302503','amitbeas17@gmail.com','',2,'2023-01-30 04:33:48','2023-01-30 04:34:19'),(56,NULL,'6581354533','amitbeas17@gmail.com','256695',1,'2023-01-31 00:29:24','2023-01-31 00:29:24'),(58,NULL,'7033025503','arun.sarkar@beas.co.in','',2,'2023-01-31 00:45:00','2023-01-31 00:46:06'),(59,NULL,'7033025506','arun.sarkar@beas.co.in','',2,'2023-01-31 02:09:02','2023-01-31 02:11:13'),(60,NULL,'7033056823','arun.sarkar@beas.co.in','555822',1,'2023-01-31 02:12:16','2023-01-31 02:12:16'),(61,NULL,'9775144970','amitbeas1786@gmail.com','143589',1,'2023-01-31 02:48:23','2023-01-31 02:48:23'),(62,NULL,'9999999889','amitbeas17@gmail.com','243340',1,'2023-01-31 02:59:59','2023-01-31 02:59:59'),(64,NULL,'9775144970','partha@gmail.com','987664',1,'2023-02-01 07:12:14','2023-02-01 07:12:14'),(65,NULL,'7033025503','sourav.mondal2@beas.co.in','618473',1,'2023-02-03 03:05:27','2023-02-03 03:05:27'),(66,NULL,'7033025533','sourav.mondal@beas.co.in','909337',1,'2023-02-03 03:35:20','2023-02-03 03:35:20'),(67,NULL,'7033025555','arun.sarkar1@beas.co.in','',2,'2023-02-06 07:45:17','2023-02-06 07:46:01'),(68,NULL,'6468465464','souravv.mondal@beas.co.in','479892',1,'2023-02-10 00:09:40','2023-02-10 00:09:40'),(69,NULL,'8995466544','souravv.mondal@beas.co.in','588221',1,'2023-02-10 00:12:48','2023-02-10 00:12:48'),(70,NULL,'9898846546','souravv.mondal@beas.co.in','677185',1,'2023-02-10 00:17:12','2023-02-10 00:17:12'),(71,NULL,'9886564653','arunk.sarkar@beas.co.in','',2,'2023-02-10 00:29:29','2023-02-10 00:31:18'),(72,NULL,'8787464646','arunk.sarkar@beas.co.in','',2,'2023-02-10 00:33:51','2023-02-10 00:34:18');
/*!40000 ALTER TABLE `otp_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_notifications`
--

DROP TABLE IF EXISTS `plant_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_notifications`
--

LOCK TABLES `plant_notifications` WRITE;
/*!40000 ALTER TABLE `plant_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES (1,'1100','PLANT','FAP Athagarh, Odisha','O','Cuttack-754027\n','TSML-FAP','INDIA','Odisha','IN',0,'2022-11-09 06:05:28','2022-11-25 06:05:28'),(2,'2200','PLANT','FAP Gopalpur, Odisha','F','At/Po. Chamakhandi, Chatrapur,Ganjam-761020\n','TSML-Gopalpur','INDIA','Odisha','IN',0,'2022-11-09 06:05:28','2022-11-16 06:05:28'),(5,'3102','PLANT','FPC Aarti Steel Ltd, Odisha','F','Ghantikhal, Po-Mahakalbasta, Cuttack, Odisha, 754029\n','TSML-ASL\n','INDIA','Odisha','IN',0,'2022-11-17 06:07:30','2022-11-17 06:07:30'),(6,'3103','PLANT','FPC Tirumala Balaji Alloys, Odisha','F','PUNJIPATHRA,GHARGHODA, Raigarh\n','TSML-TBAPL\n','INDIA','Chhattisagarh','IN',0,'2022-11-09 06:07:30','2022-11-30 06:07:30'),(7,'3104','PLANT','FPC Shyam Metalics & Energy Ltd, Odisha','F','Pandloi,Sambalpur-768212\n','TSML-SMEL\n','INDIA','Odisha','IN',0,'2022-11-17 06:07:30','2022-11-17 06:07:30'),(8,'3105','PORT','Jindal Stainless Limited','F','Danagadi,Kalinganagar, Jajpur, Odisha, 755026\n','TSML-JSL\n','INDIA','Odisha','IN',0,'2022-11-09 06:07:30','2022-11-30 06:07:30'),(9,'3106','PLANT','FPC Jai Balaji Industries ltd','F','Durgapur. Burdwan, West Bengal-713321\n','TSML-JBIL\n','INDIA','West Bengal','IN',0,'2022-11-09 06:07:30','2022-11-30 06:07:30'),(10,'3107','PLANT','FPC Nava Bharat Ferro alloys ltd','F','Kharagprasad,Meramandali, Dhenkanal, Odisha, 759121\r\n','TSML-NBVL\r\n','INDIA','Odisha','IN',0,NULL,NULL),(11,'3108','PLANT','FAP Bamnipal, Odisha','F','Dist - Sundargarh Odisha - 770 039\r\n','TSML-BPL\r\n','INDIA','Odisha','IN',0,NULL,NULL),(12,'3109','PLANT','FPC FACOR - Garividi, Andhra Pradesh','F','Dist - Vizianagaram, Andhra Pradesh 535101 ','TSML-FACOR','INDIA','Andhra Pradesh','IN',0,NULL,NULL),(13,'4101','PORT','PARADIP','PORT','1A, Jagannath Marg,Madhuban,, Jagatsinghapur, Odisha, 754142','TSML-RDP','INDIA','Andhra Pradesh','IN',0,NULL,NULL),(14,'4102','PORT','TATA STEEL LTD-SRAVAN (CFS)','PORT','IDA, BLOCK-C, CHINA MULAGADA, VISAKHAPATNAM - 530 012','TSML-SRAVAN','INDIA','Andhra Pradesh','IN',0,NULL,NULL),(15,'4103','PORT',' TATA STEEL- GATEWAY(CFS)','Port','C/O Gateway East India Pvt Ltd, Sheela Nagar, Vizag - 530012','TSML-GATEWAY','INDIA','Andhra Pradesh','IN',0,NULL,NULL),(16,'4104','PORT','TATA STEEL-VCT(CFS)','Port',' Adjacent to BPCL EXIM Park, Visakhapatnam - 530014','TSML-VCT','INDIA','Andhra Pradesh','IN',0,NULL,NULL),(17,'4105','PORT','TSML-APPEJAY','Port','Kalinganagar Industrial Complex, Jajpur, 755026','TSML-APPEJAY','INDIA','Odisha','IN',0,NULL,NULL),(18,'4106','PORT','Visakhapatnam port trust','Port','LPG Terminal, HP Petro Park, Vizag-530020','TSML-VIZAG','INDIA','Andhra Pradesh','IN',0,NULL,NULL),(19,'6101','DEPOT','Nagpur, Maharashtra','O','MAHALGAON,NAGPUR( MAHARASHTRA),441202','TSML-SWETAL','INDIA','Maharashtra','IN',0,NULL,NULL),(20,'6102','DEPOT','Bhiwandi, Maharashtra','O','Grampanchayat H. Bhiwandi Maharashtra India 421302','TSML-LDM','INDIA','Maharashtra','IN',0,NULL,NULL),(21,'6103','DEPOT','Faridabad, Haryana','O','Mathura Road,jharsently, Ballabhgarh,faridabad- 121004','TSML-KANUMHARA','INDIA','Haryana','IN',0,NULL,NULL),(22,'5101','MINES','Sukinda Mines','Mines','Sukinda, Jajpur,Odisha-755028','TSML-SCM','INDIA','Odisha','IN',0,NULL,NULL),(23,'5102','MINES','Saruabil Mines','Mines','Village- Saruabil, Post -Kansa,  Jajpur, Odisha, 755028','TSML-SARUABIL','INDIA','Odisha','IN',0,NULL,NULL),(24,'5103','MINES','Kamarda Mines','Mines','Post-Kansa, Jajpur, Odisha, 755028','TSML-KCM','INDIA','Odisha','IN',0,NULL,NULL),(25,'3110','PLANT','FAP Jajpur, Odisha','O','Cuttack-754027\r\n','TSML-FAP','INDIA','Odisha','IN',0,'2022-11-09 06:05:28','2022-11-25 06:05:28');
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po_status_refs`
--

DROP TABLE IF EXISTS `po_status_refs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `po_status_refs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po_status_refs`
--

LOCK TABLES `po_status_refs` WRITE;
/*!40000 ALTER TABLE `po_status_refs` DISABLE KEYS */;
INSERT INTO `po_status_refs` VALUES (1,'1','Accepted',NULL,NULL),(2,'2','PO Generated',NULL,NULL),(3,'3','Rejected',NULL,NULL),(4,'4','Pending',NULL,NULL),(5,'5','Material Getting Ready',NULL,NULL),(6,'6','Material Getting Ready',NULL,NULL),(7,'7','Delivery under Progress',NULL,NULL),(8,'8','Material invoiced/dispatched',NULL,NULL);
/*!40000 ALTER TABLE `po_status_refs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_calculation`
--

DROP TABLE IF EXISTS `price_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_calculation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pro_id` bigint(10) NOT NULL,
  `cat_id` bigint(10) NOT NULL,
  `sub_cat_id` bigint(10) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `BPT_Price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price_Premium_sing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Price_Premium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Misc_Expense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Interest_Rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CAM_Discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_per` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive|3=Delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `price_calculation_user_id_foreign` (`user_id`),
  CONSTRAINT `price_calculation_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_calculation`
--

LOCK TABLES `price_calculation` WRITE;
/*!40000 ALTER TABLE `price_calculation` DISABLE KEYS */;
INSERT INTO `price_calculation` VALUES (1,1,1,1,'10-50',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:24:40','2022-11-29 23:24:40'),(2,1,1,1,'10-60',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:25:33','2022-11-29 23:25:33'),(3,1,1,1,'10-70',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:25:37','2022-11-29 23:25:37'),(4,1,1,1,'10-80',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:25:42','2022-11-29 23:25:42'),(5,1,1,1,'10-100',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:25:46','2022-11-29 23:25:46'),(6,1,1,1,'10-150',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:25:49','2022-11-29 23:25:49'),(7,1,1,2,'10-50',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:35:36','2022-11-29 23:35:36'),(8,1,1,2,'10-60',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:35:40','2022-11-29 23:35:40'),(9,1,1,2,'10-70',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:35:44','2022-11-29 23:35:44'),(10,1,1,2,'10-80',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:35:47','2022-11-29 23:35:47'),(11,1,1,2,'10-100',NULL,'100000','+','6500','0','9','0','18',1,'2022-11-29 23:35:51','2022-11-29 23:35:51'),(12,1,1,2,'10-150',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:35:55','2022-11-29 23:35:55'),(13,1,1,3,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:36:25','2022-11-29 23:36:25'),(14,1,1,3,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:36:28','2022-11-29 23:36:28'),(15,1,1,3,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:36:33','2022-11-29 23:36:33'),(16,1,1,3,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:36:37','2022-11-29 23:36:37'),(17,1,1,3,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:36:40','2022-11-29 23:36:40'),(18,1,1,3,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:36:44','2022-11-29 23:36:44'),(19,1,1,4,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:37:51','2022-11-29 23:37:51'),(20,1,1,4,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:37:53','2022-11-29 23:37:53'),(21,1,1,4,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:37:56','2022-11-29 23:37:56'),(22,1,1,4,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:38:26','2022-11-29 23:38:26'),(23,1,1,4,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:38:31','2022-11-29 23:38:31'),(24,1,1,4,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:38:35','2022-11-29 23:38:35'),(25,1,1,5,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(26,1,1,5,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(27,1,1,5,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(28,1,1,5,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(29,1,1,5,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(30,1,1,5,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(31,1,1,5,'20-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(32,1,1,6,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(33,1,1,6,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(34,1,1,6,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(35,1,1,6,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(36,1,1,6,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(37,1,1,6,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(38,1,1,6,'20-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(39,1,1,7,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(40,1,1,7,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(41,1,1,7,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(42,1,1,7,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(43,1,1,7,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(44,1,1,7,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(45,1,1,8,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(46,1,1,8,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(47,1,1,8,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(48,1,1,8,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(49,1,1,8,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(50,1,1,8,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(51,1,1,9,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(52,1,1,9,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(53,1,1,9,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(54,1,1,9,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(55,1,1,9,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(56,1,1,9,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(57,1,1,10,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(58,1,1,10,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(59,1,1,10,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(60,1,1,10,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(61,1,1,10,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(62,1,1,10,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(63,1,1,11,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(64,1,1,11,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(65,1,1,11,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(66,1,1,11,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(67,1,1,11,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(68,1,1,11,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(69,1,1,12,'10-50',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(70,1,1,12,'10-60',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(71,1,1,12,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(72,1,1,12,'10-80',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(73,1,1,12,'10-100',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(74,1,1,12,'10-150',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(75,1,1,13,'10-50',NULL,'100000','-','1000','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(76,1,1,13,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(77,1,1,13,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(78,1,1,13,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(79,1,1,13,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(80,1,1,13,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(81,1,1,14,'0-3',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(82,1,1,14,'0-10',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(83,1,1,14,'3-10',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(84,1,1,15,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(85,1,1,15,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(86,1,1,15,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(87,1,1,15,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(88,1,1,15,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(89,1,1,15,'10-150',NULL,'100000','+','4500','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(90,1,1,16,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(91,1,1,16,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(92,1,1,16,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(93,1,1,16,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(94,1,1,16,'10-100',NULL,'100000','+','6500','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(95,1,1,16,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(96,1,1,17,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(97,1,1,17,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(98,1,1,17,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(99,1,1,17,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(100,1,1,17,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(101,1,1,17,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(102,1,1,18,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(103,1,1,18,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(104,1,1,18,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(105,1,1,18,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(106,1,1,18,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(107,1,1,18,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(108,1,1,19,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(109,1,1,19,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(110,1,1,19,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(111,1,1,19,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(112,1,1,19,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(113,1,1,19,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(114,1,1,20,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(115,1,1,20,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(116,1,1,20,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(117,1,1,20,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(118,1,1,20,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(119,1,1,20,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(120,1,1,21,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(121,1,1,21,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(122,1,1,21,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(123,1,1,21,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(124,1,1,21,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(125,1,1,21,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(126,1,1,22,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(127,1,1,22,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(128,1,1,22,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(129,1,1,22,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(130,1,1,22,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(131,1,1,22,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(132,1,1,23,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(133,1,1,23,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(134,1,1,23,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(135,1,1,23,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(136,1,1,23,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(137,1,1,23,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(138,1,1,24,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(139,1,1,24,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(140,1,1,24,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(141,1,1,24,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(142,1,1,24,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(143,1,1,24,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(144,1,1,25,'10-50',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(145,1,1,25,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(146,1,1,25,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(147,1,1,25,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(148,1,1,25,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(149,1,1,25,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(150,1,1,26,'10-50',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(151,1,1,26,'10-60',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(152,1,1,26,'10-70',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(153,1,1,26,'10-80',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(154,1,1,26,'10-100',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(155,1,1,26,'10-150',NULL,'100000','+','2000','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(156,1,1,27,'10-50',NULL,'100000','-','1000','0','9','0','18',1,'2022-11-29 23:39:39','2022-11-29 23:39:39'),(157,1,1,27,'10-60',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:44','2022-11-29 23:39:44'),(158,1,1,27,'10-70',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:47','2022-11-29 23:39:47'),(159,1,1,27,'10-80',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(160,1,1,27,'10-100',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(161,1,1,27,'10-150',NULL,'100000','+','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(162,1,1,28,'0-3',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:51','2022-11-29 23:39:51'),(163,1,1,28,'0-10',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(164,1,1,28,'3-10',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(165,1,1,29,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(166,1,1,29,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(167,1,1,30,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(168,1,1,30,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(169,1,1,31,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(170,1,1,31,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(171,1,1,32,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(172,1,1,32,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(173,1,1,33,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(174,1,1,33,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(175,1,1,34,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(176,1,1,34,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(177,1,1,35,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(178,1,1,35,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(179,1,1,36,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(180,1,1,36,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(181,1,1,37,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(182,1,1,37,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(183,1,1,38,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(184,1,1,38,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(185,1,1,39,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(186,1,1,39,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(187,1,1,40,'10-50',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:55','2022-11-29 23:39:55'),(188,1,1,40,'10-70',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(189,1,1,41,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(190,1,1,42,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(191,1,1,43,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(192,1,1,44,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(193,1,1,45,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(194,1,1,46,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(195,1,1,47,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(196,1,1,48,'10-30',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58'),(197,1,1,42,'10-80',NULL,'100000','-','0','0','9','0','18',1,'2022-11-29 23:39:58','2022-11-29 23:39:58');
/*!40000 ALTER TABLE `price_calculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_management`
--

DROP TABLE IF EXISTS `price_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_management` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pro_id` bigint(20) unsigned NOT NULL,
  `cat_id` bigint(20) unsigned NOT NULL,
  `sub_cat_id` bigint(20) unsigned NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'per MT',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `price_management_pro_id_foreign` (`pro_id`),
  KEY `price_management_cat_id_foreign` (`cat_id`),
  KEY `price_management_sub_cat_id_foreign` (`sub_cat_id`),
  CONSTRAINT `price_management_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categorys` (`id`) ON DELETE CASCADE,
  CONSTRAINT `price_management_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `price_management_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_categorys_old` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_management`
--

LOCK TABLES `price_management` WRITE;
/*!40000 ALTER TABLE `price_management` DISABLE KEYS */;
INSERT INTO `price_management` VALUES (1,1,1,1,'10-50','40,000',1,'2022-09-27 03:32:56','2022-09-27 03:32:56'),(2,1,1,1,'10-70','60,000',2,'2022-09-27 03:47:33','2022-09-27 03:47:33'),(3,1,1,1,'10-100','80,000',1,'2022-10-26 01:17:39','2022-10-26 01:17:39'),(4,1,1,1,'10-150','90,000',1,'2022-11-06 18:30:00','2022-11-06 18:30:00'),(5,1,2,1,'10-50','40000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(6,1,2,1,'10-70','60000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(7,1,2,1,'10-100','80000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(8,1,2,1,'100-150','100000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(13,2,4,3,'10-50','40000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(14,2,4,3,'10-70','60000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(15,2,4,3,'10-100','80000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(16,2,4,3,'10-150','100000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(17,2,5,3,'10-50','40000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(18,2,5,3,'10-70','60000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(19,2,5,3,'10-100','80000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00'),(20,2,5,3,'10-150','100000',1,'2022-11-08 18:30:00','2022-11-08 18:30:00');
/*!40000 ALTER TABLE `price_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_masters`
--

DROP TABLE IF EXISTS `price_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_masters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_masters`
--

LOCK TABLES `price_masters` WRITE;
/*!40000 ALTER TABLE `price_masters` DISABLE KEYS */;
INSERT INTO `price_masters` VALUES (1,'BPT01','Basic Price (High Phos 10-150mm)',NULL,NULL),(2,'QP01','Quality Premium',NULL,NULL),(3,'DC01','Delivery Cost',NULL,NULL),(4,'IR01','Interest Rate',NULL,NULL),(5,'CC01','Credit Cost For',NULL,NULL),(6,'MC01','Miscellaneous Cost (Sizing, Commission etc.)',NULL,NULL),(7,'PPA01','Proposed Price Adjustment',NULL,NULL),(8,'FP01','Final Price',NULL,NULL),(9,'PDB01','Percentage difference Between BPT & Final Price',NULL,NULL);
/*!40000 ALTER TABLE `price_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size_mat_no`
--

DROP TABLE IF EXISTS `product_size_mat_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_size_mat_no` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(100) DEFAULT NULL,
  `plant_type` varchar(255) DEFAULT NULL,
  `sub_cat_id` varchar(100) DEFAULT NULL,
  `product_size` varchar(100) DEFAULT NULL,
  `mat_no` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size_mat_no`
--

LOCK TABLES `product_size_mat_no` WRITE;
/*!40000 ALTER TABLE `product_size_mat_no` DISABLE KEYS */;
INSERT INTO `product_size_mat_no` VALUES (1,'1','F','1','10-50','120000056','2022-12-06 18:33:09'),(2,'1','F','1','10-60','120000057','2022-12-06 18:36:11'),(3,'1','F','1','10-70','120000058','2022-12-06 18:36:11'),(4,'1','F','1','10-80','120000059','2022-12-06 18:36:11'),(5,'1','F','1','10-100','120000060','2022-12-06 18:36:11'),(6,'1','F','1','10-150','120000061','2022-12-06 18:36:11'),(7,'1','F','2','10-50','120000062','2022-12-06 18:42:11'),(8,'1','F','2','10-60','120000063','2022-12-06 18:42:11'),(9,'1','F','2','10-70','120000064','2022-12-06 18:42:11'),(10,'1','F','2','10-80','120000065','2022-12-06 18:42:11'),(11,'1','F','2','10-100','120000066','2022-12-06 18:42:11'),(12,'1','F','2','10-150','120000067','2022-12-06 18:42:11'),(13,'1','F','3','10-50','120000068','2022-12-06 18:46:55'),(14,'1','F','3','10-60','120000069','2022-12-06 18:46:55'),(15,'1','F','3','10-70','120000070','2022-12-06 18:46:55'),(16,'1','F','3','10-80','120000071','2022-12-06 18:46:55'),(17,'1','F','3','10-100','120000072','2022-12-06 18:46:55'),(18,'1','F','3','10-150','120000073','2022-12-06 18:46:55'),(19,'1','F','4','10-50','120000074','2022-12-06 18:48:35'),(20,'1','F','4','10-60','120000075','2022-12-06 18:48:35'),(21,'1','F','4','10-70','120000076','2022-12-06 18:48:35'),(22,'1','F','4','10-80','120000077','2022-12-06 18:48:35'),(23,'1','F','4','10-100','120000078','2022-12-06 18:48:35'),(24,'1','F','4','10-150','120000079','2022-12-06 18:48:35'),(25,'1','F','5','10-50','120000080','2022-12-06 18:50:06'),(26,'1','F','5','10-60','120000081','2022-12-06 18:50:06'),(27,'1','F','5','10-70','120000082','2022-12-06 18:50:06'),(28,'1','F','5','10-80','120000083','2022-12-06 18:50:06'),(29,'1','F','5','10-100','120000084','2022-12-06 18:50:06'),(30,'1','F','5','10-150','120000085','2022-12-06 18:50:06'),(31,'1','F','5','20-150','120000212','2022-12-06 18:52:08'),(32,'1','F','6','10-50','120000086','2022-12-06 18:52:08'),(33,'1','F','6','10-60','120000087','2022-12-06 18:52:08'),(34,'1','F','6','10-70','120000088','2022-12-06 18:52:08'),(35,'1','F','6','10-80','120000089','2022-12-06 18:54:49'),(36,'1','F','6','10-100','120000090','2022-12-06 18:54:49'),(37,'1','F','6','10-150','120000091','2022-12-06 18:54:49'),(38,'1','F','6','20-150','120000213','2023-01-04 15:01:35'),(39,'1','F','7','10-50','120000092','2023-01-04 15:01:35'),(40,'1','F','7','10-60','120000093','2023-01-04 15:01:35'),(41,'1','F','7','10-70','120000094','2023-01-04 15:01:35'),(42,'1','F','7','10-80','120000095','2023-01-04 15:01:35'),(43,'1','F','7','10-100','120000096','2023-01-04 15:01:35'),(44,'1','F','7','10-150','120000097','2023-01-04 15:01:35'),(45,'1','F','8','10-50','120000098','2023-01-04 15:01:35'),(46,'1','F','8','10-60','120000099','2023-01-04 15:01:35'),(47,'1','F','8','10-70','120000100','2023-01-04 15:01:35'),(48,'1','F','8','10-80','120000101','2023-01-04 15:01:35'),(49,'1','F','8','10-100','120000102','2023-01-04 15:01:35'),(50,'1','F','8','10-150','120000103','2023-01-04 15:01:35'),(51,'1','F','9','10-50','120000104','2023-01-04 15:01:35'),(52,'1','F','9','10-60','120000105','2023-01-04 15:01:35'),(53,'1','F','9','10-70','120000106','2023-01-04 15:01:35'),(54,'1','F','9','10-80','120000107','2023-01-04 15:01:35'),(55,'1','F','9','10-100','120000108','2023-01-04 15:01:35'),(56,'1','F','9','10-150','120000109','2023-01-04 15:01:35'),(57,'1','F','10','10-50','120000110','2023-01-04 15:01:35'),(58,'1','F','10','10-60','120000111','2023-01-04 15:01:35'),(59,'1','F','10','10-70','120000112','2023-01-04 15:01:35'),(60,'1','F','10','10-80','120000113','2023-01-04 15:01:35'),(61,'1','F','10','10-100','120000114','2023-01-04 15:01:35'),(62,'1','F','10','10-150','120000115','2023-01-04 15:01:35'),(63,'1','F','11','10-50','120000128','2023-01-04 15:01:35'),(64,'1','F','11','10-60','120000129','2023-01-04 15:01:35'),(65,'1','F','11','10-70','120000130','2023-01-04 15:01:35'),(66,'1','F','11','10-80','120000131','2023-01-04 15:01:35'),(67,'1','F','11','10-100','120000132','2023-01-04 15:01:35'),(68,'1','F','11','10-150','120000133','2023-01-04 15:01:35'),(69,'1','F','12','10-50','120000116','2023-01-04 15:01:35'),(70,'1','F','12','10-60','120000117','2023-01-04 15:01:35'),(71,'1','F','12','10-70','120000118','2023-01-04 15:01:35'),(72,'1','F','12','10-80','120000119','2023-01-04 15:01:35'),(73,'1','F','12','10-100','120000120','2023-01-04 15:01:35'),(74,'1','F','12','10-150','120000121','2023-01-04 15:01:35'),(76,'1','F','13','10-50','120000122','2023-01-04 15:01:35'),(77,'1','F','13','10-60','120000123','2023-01-04 15:01:35'),(78,'1','F','13','10-70','120000124','2023-01-04 15:01:35'),(79,'1','F','13','10-80','120000125','2023-01-04 15:01:35'),(80,'1','F','13','10-100','120000126','2023-01-04 15:01:35'),(81,'1','F','13','10-150','120000127','2023-01-04 15:01:35'),(82,'1','F','14','3-10','120000054','2023-01-04 15:01:35'),(83,'1','F','14','0-3','120000055','2023-01-04 15:01:35'),(84,'1','F','14','0-10','120000135','2023-01-04 15:01:35'),(85,'1','F','45','10-30','120000214','2023-01-04 15:01:35'),(86,'1','F','46','10-30','120000306','2023-01-04 15:01:35'),(87,'1','F','47','10-30','120000307','2023-01-04 15:01:35'),(88,'1','F','48','10-30','120000308','2023-01-04 15:01:35'),(89,'1','O','15','10-50','120000147','2023-01-04 15:01:35'),(90,'1','O','15','10-60','120000148','2023-01-04 15:01:35'),(91,'1','O','15','10-70','120000138','2023-01-04 15:01:36'),(92,'1','O','15','10-80','120000139','2023-01-04 15:01:36'),(93,'1','O','15','10-100','120000140','2023-01-04 15:01:36'),(94,'1','O','15','10-150','120000141','2023-01-04 15:01:36'),(95,'1','O','16','10-50','120000142','2023-01-04 15:01:36'),(96,'1','O','16','10-60','120000143','2023-01-04 15:01:36'),(97,'1','O','16','10-70','120000144','2023-01-04 15:01:36'),(98,'1','O','16','10-80','120000145','2023-01-04 15:01:36'),(99,'1','O','16','10-100','120000146','2023-01-04 15:01:36'),(100,'1','O','16','10-150','120000149','2023-01-04 15:01:36'),(101,'1','O','17','10-50','120000150','2023-01-04 15:01:36'),(102,'1','O','17','10-60','120000151','2023-01-04 15:01:36'),(103,'1','O','17','10-70','120000152','2023-01-04 15:01:36'),(104,'1','O','17','10-80','120000153','2023-01-04 15:01:36'),(105,'1','O','17','10-100','120000154','2023-01-04 15:01:36'),(106,'1','O','17','10-150','120000155','2023-01-04 15:01:36'),(107,'1','O','18','10-50','120000156','2023-01-04 15:01:36'),(108,'1','O','18','10-60','120000157','2023-01-04 15:01:36'),(109,'1','O','18','10-70','120000158','2023-01-04 15:01:36'),(110,'1','O','18','10-80','120000159','2023-01-04 15:01:36'),(111,'1','O','18','10-100','120000160','2023-01-04 15:01:36'),(112,'1','O','18','10-150','120000161','2023-01-04 15:01:36'),(113,'1','O','19','10-50','120000162','2023-01-04 15:01:36'),(114,'1','O','19','10-60','120000163','2023-01-04 15:01:36'),(115,'1','O','19','10-70','120000164','2023-01-04 15:01:36'),(116,'1','O','19','10-80','120000165','2023-01-04 15:01:36'),(117,'1','O','19','10-100','120000166','2023-01-04 15:01:36'),(118,'1','O','19','10-150','120000167','2023-01-04 15:01:36'),(119,'1','O','20','10-50','120000168','2023-01-04 15:01:36'),(120,'1','O','20','10-60','120000169','2023-01-04 15:01:36'),(121,'1','O','20','10-70','120000170','2023-01-04 15:01:36'),(122,'1','O','20','10-80','120000171','2023-01-04 15:01:36'),(123,'1','O','20','10-100','120000172','2023-01-04 15:01:36'),(124,'1','O','20','10-150','120000173','2023-01-04 15:01:36'),(125,'1','O','21','10-50','120000174','2023-01-04 15:01:36'),(126,'1','O','21','10-60','120000175','2023-01-04 15:01:36'),(127,'1','O','21','10-70','120000176','2023-01-04 15:01:36'),(128,'1','O','21','10-80','120000177','2023-01-04 15:01:36'),(129,'1','O','21','10-100','120000178','2023-01-04 15:01:36'),(130,'1','O','21','10-150','120000179','2023-01-04 15:01:36'),(131,'1','O','22','10-50','120000180','2023-01-04 15:01:36'),(132,'1','O','22','10-60','120000181','2023-01-04 15:01:36'),(133,'1','O','22','10-70','120000182','2023-01-04 15:01:36'),(134,'1','O','22','10-80','120000183','2023-01-04 15:01:36'),(135,'1','O','22','10-100','120000184','2023-01-04 15:01:36'),(136,'1','O','22','10-150','120000185','2023-01-04 15:01:36'),(137,'1','O','23','10-50','120000186','2023-01-04 16:21:51'),(138,'1','O','23','10-60','120000187','2023-01-04 16:21:51'),(139,'1','O','23','10-70','120000188','2023-01-04 16:21:51'),(140,'1','O','23','10-80','120000189','2023-01-04 16:21:51'),(141,'1','O','23','10-100','120000190','2023-01-04 16:21:51'),(142,'1','O','23','10-150','120000191','2023-01-04 16:21:51'),(143,'1','O','24','10-50','120000192','2023-01-04 16:21:51'),(144,'1','O','24','10-60','120000193','2023-01-04 16:21:51'),(145,'1','O','24','10-70','120000194','2023-01-04 16:21:51'),(146,'1','O','24','10-80','120000195','2023-01-04 16:21:51'),(147,'1','O','24','10-100','120000196','2023-01-04 16:21:51'),(148,'1','O','24','10-150','120000197','2023-01-04 16:21:51'),(149,'1','O','26','10-50','120000198','2023-01-04 16:21:51'),(150,'1','O','26','10-60','120000199','2023-01-04 16:21:51'),(151,'1','O','26','10-70','120000200','2023-01-04 16:21:51'),(152,'1','O','26','10-80','120000201','2023-01-04 16:21:51'),(153,'1','O','26','10-100','120000202','2023-01-04 16:21:51'),(154,'1','O','26','10-150','120000203','2023-01-04 16:21:51'),(155,'1','O','27','10-50','120000204','2023-01-04 16:21:51'),(156,'1','O','27','10-60','120000205','2023-01-04 16:21:51'),(157,'1','O','27','10-70','120000206','2023-01-04 16:21:51'),(158,'1','O','27','10-80','120000207','2023-01-04 16:21:51'),(159,'1','O','27','10-100','120000208','2023-01-04 16:21:51'),(160,'1','O','27','10-150','120000209','2023-01-04 16:21:51'),(161,'1','O','28','3-10','120000210','2023-01-04 16:21:51'),(162,'1','O','28','0-10','120000301','2023-01-04 16:21:51'),(163,'1','O','28','0-3','120000211','2023-01-04 16:21:51'),(164,'1','O','41','10-30','120000312','2023-01-04 16:21:51'),(165,'1','O','42','10-30','120000309','2023-01-04 16:21:51'),(166,'1','O','43','10-30','120000310','2023-01-04 16:21:51'),(167,'1','O','44','10-30','120000311','2023-01-04 16:21:51');
/*!40000 ALTER TABLE `product_size_mat_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_desc` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Ferro Chrome','ferro-chrome','product description update',1,'2022-09-09 02:16:20','2023-01-19 03:25:22'),(2,'Chrome Ore','chrome-ore','product description on Chrome Ore',1,'2022-09-09 02:24:23','2023-01-26 11:38:02'),(7,'Sample Product1111','sample-product1111','Sample description2',2,'2023-01-13 03:58:15','2023-01-26 11:23:39');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_deliveries`
--

DROP TABLE IF EXISTS `quote_deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_deliveries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quote_sche_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'quote_schedules.schedule_no',
  `qty` decimal(19,2) NOT NULL,
  `to_date` date NOT NULL,
  `from_date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_deliveries`
--

LOCK TABLES `quote_deliveries` WRITE;
/*!40000 ALTER TABLE `quote_deliveries` DISABLE KEYS */;
INSERT INTO `quote_deliveries` VALUES (1,'1259',50.00,'2023-02-16','0000-00-00',NULL,'2023-02-14 05:08:54','2023-02-14 05:08:54'),(2,'1259',50.00,'2023-02-23','0000-00-00',NULL,'2023-02-14 05:08:54','2023-02-14 05:08:54'),(3,'9338',100.00,'2023-02-18','0000-00-00',NULL,'2023-02-16 02:15:20','2023-02-16 02:15:20'),(4,'8368',100.00,'2023-02-17','0000-00-00',NULL,'2023-02-16 06:07:44','2023-02-16 06:07:44'),(5,'8368',100.00,'2023-02-18','0000-00-00',NULL,'2023-02-16 06:07:44','2023-02-16 06:07:44'),(6,'4505',100.00,'2023-02-25','0000-00-00',NULL,'2023-02-16 06:07:44','2023-02-16 06:07:44'),(7,'4884',75.00,'2023-02-19','0000-00-00',NULL,'2023-02-17 01:47:13','2023-02-17 01:47:13'),(8,'8189',75.00,'2023-02-19','0000-00-00',NULL,'2023-02-17 01:47:13','2023-02-17 01:47:13'),(9,'7469',100.00,'2023-02-19','0000-00-00',NULL,'2023-02-17 03:56:27','2023-02-17 03:56:27'),(10,'5697',200.00,'2023-02-26','0000-00-00',NULL,'2023-02-17 04:44:39','2023-02-17 04:44:39'),(12,'8737',200.00,'2023-02-19','0000-00-00',NULL,'2023-02-17 05:18:17','2023-02-17 05:18:17'),(13,'1397',50.00,'2023-02-19','0000-00-00',NULL,'2023-02-17 05:20:16','2023-02-17 05:20:16'),(14,'1397',50.00,'2023-02-24','0000-00-00',NULL,'2023-02-17 05:20:16','2023-02-17 05:20:16');
/*!40000 ALTER TABLE `quote_deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_schedules`
--

DROP TABLE IF EXISTS `quote_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` bigint(20) NOT NULL,
  `schedule_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `to_date` date NOT NULL,
  `from_date` date NOT NULL,
  `kam_price` decimal(18,2) DEFAULT NULL,
  `expected_price` decimal(18,2) DEFAULT NULL,
  `plant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_type` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kamsRemarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salesRemarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_till` timestamp NULL DEFAULT NULL,
  `confirm_date` date DEFAULT NULL,
  `pay_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `quote_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=ongoing,1=approved,2=rejected,3=In-requote,4=Delivered',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_schedules`
--

LOCK TABLES `quote_schedules` WRITE;
/*!40000 ALTER TABLE `quote_schedules` DISABLE KEYS */;
INSERT INTO `quote_schedules` VALUES (1,1,'1259','100','10-60',2,'2023-02-25','2023-02-18',NULL,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS',NULL,NULL,'Ex-Works',NULL,NULL,'Advance Payment',NULL,1,'2023-02-14 05:08:53','2023-02-14 05:04:58','2023-02-14 05:08:53'),(2,2,'1259','100','10-60',2,'2023-02-25','2023-02-18',NULL,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS','remarks for sles',NULL,'Ex-Works',NULL,NULL,'Advance Payment',NULL,1,'2023-02-14 05:12:01','2023-02-14 05:08:53','2023-02-14 05:12:01'),(3,3,'1259','100','10-60',2,'2023-02-25','2023-02-18',NULL,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS','remarks for sles','Okkkk fine','Ex-Works',NULL,NULL,'Advance Payment',NULL,1,'2023-02-14 05:13:11','2023-02-14 05:12:01','2023-02-14 05:13:11'),(4,4,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS','remarks for sles head','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment','0',1,'2023-02-14 05:15:17','2023-02-14 05:13:11','2023-02-14 05:15:17'),(5,5,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS','remarks for sles head','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,'2023-02-14 05:18:22','2023-02-14 05:15:17','2023-02-14 05:18:22'),(6,6,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS (Reqouted for CAM)',NULL,'Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,'2023-02-14 05:19:29','2023-02-14 05:18:22','2023-02-14 05:19:29'),(7,7,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS','remarks for customer requote','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,'2023-02-14 05:21:09','2023-02-14 05:19:29','2023-02-14 05:21:09'),(8,8,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS (Accepting)','remarks for customer requote','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,'2023-02-14 05:21:37','2023-02-14 05:21:09','2023-02-14 05:21:37'),(9,9,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS (Accepting)','remarks for customer requote','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,'2023-02-14 05:28:17','2023-02-14 05:21:37','2023-02-14 05:28:17'),(10,10,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS (Accepting)','remarks for customer requote','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,'2023-02-14 06:01:39','2023-02-14 05:28:17','2023-02-14 06:01:39'),(11,11,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS (Accepting)','remarks for customer requote','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,'2023-02-14 06:13:20','2023-02-14 06:01:39','2023-02-14 06:13:20'),(12,12,'1259','100','10-60',2,'2023-02-25','2023-02-18',106500.00,100000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','2','4','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS (Accepting)','remarks for customer requote update po','Okkkk fine','Ex-Works','2023-02-16 10:43:00',NULL,'Advance Payment',NULL,1,NULL,'2023-02-14 06:13:20','2023-02-14 06:13:20'),(13,13,'9338','100','10-70',2,'2023-02-26','2023-02-18',NULL,150000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','3','1','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',NULL,NULL,'Ex-Works',NULL,NULL,'Advance Payment',NULL,0,'2023-02-16 02:15:18','2023-02-16 01:18:00','2023-02-16 02:15:18'),(14,14,'9338','100','10-70',2,'2023-02-26','2023-02-18',NULL,150000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','3','1','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful',NULL,'Ex-Works',NULL,NULL,'Advance Payment',NULL,0,'2023-02-16 02:29:49','2023-02-16 02:15:18','2023-02-16 02:29:49'),(15,15,'9338','100','10-70',2,'2023-02-26','2023-02-18',NULL,150000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','3','1','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to','Ex-Works',NULL,NULL,'Advance Payment',NULL,0,'2023-02-17 01:22:14','2023-02-16 02:29:49','2023-02-17 01:22:14'),(16,16,'8368','200','10-50',1,'2023-02-28','2023-02-22',NULL,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla',NULL,NULL,'Ex-Works',NULL,NULL,'Advance Payment',NULL,1,'2023-02-16 06:07:43','2023-02-16 06:05:39','2023-02-16 06:07:43'),(17,16,'4505','100','10-50',1,'2023-02-28','2023-02-22',NULL,100000.00,NULL,NULL,NULL,'2','4','In publishing and graphic design, Lorem ipsum is a pla',NULL,NULL,'DAP (Delivered at Place)',NULL,NULL,'Advance Payment',NULL,1,'2023-02-16 06:07:43','2023-02-16 06:05:39','2023-02-16 06:07:43'),(18,17,'8368','200','10-50',1,'2023-02-28','2023-02-22',NULL,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan',NULL,'Ex-Works',NULL,NULL,'Advance Payment',NULL,1,'2023-02-16 06:14:05','2023-02-16 06:07:43','2023-02-16 06:14:05'),(19,17,'4505','100','10-50',1,'2023-02-28','2023-02-22',NULL,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan',NULL,'DAP (Delivered at Place)',NULL,NULL,'Advance Payment',NULL,1,'2023-02-16 06:14:05','2023-02-16 06:07:43','2023-02-16 06:14:05'),(20,18,'8368','200','10-50',1,'2023-02-28','2023-02-22',NULL,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan','sales plan to cam','Ex-Works',NULL,NULL,'Advance Payment',NULL,1,'2023-02-16 06:21:59','2023-02-16 06:14:05','2023-02-16 06:21:59'),(21,18,'4505','100','10-50',1,'2023-02-28','2023-02-22',NULL,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan','sales plan to cam','DAP (Delivered at Place)',NULL,NULL,'Advance Payment',NULL,1,'2023-02-16 06:21:59','2023-02-16 06:14:05','2023-02-16 06:21:59'),(22,19,'8368','200','10-50',1,'2023-02-28','2023-02-22',104500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan','sales plan to cam','Ex-Works','2023-02-18 11:51:00',NULL,'Advance Payment','0',1,'2023-02-16 06:22:28','2023-02-16 06:21:59','2023-02-16 06:22:28'),(23,19,'4505','100','10-50',1,'2023-02-28','2023-02-22',164500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','In publishing and graphic design, Lorem ipsum is a pla','cam to sales head','sales plan to cam','DAP (Delivered at Place)','2023-02-17 11:51:00',NULL,'Advance Payment','0',1,'2023-02-16 06:22:28','2023-02-16 06:21:59','2023-02-16 06:22:28'),(24,20,'8368','200','10-50',1,'2023-02-28','2023-02-22',104500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan','sales plan to cam','Ex-Works','2023-02-18 11:51:00',NULL,'Advance Payment',NULL,1,'2023-02-16 06:22:55','2023-02-16 06:22:28','2023-02-16 06:22:55'),(25,20,'4505','100','10-50',1,'2023-02-28','2023-02-22',164500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','In publishing and graphic design, Lorem ipsum is a pla','cam to sales head','sales plan to cam','DAP (Delivered at Place)','2023-02-17 11:51:00',NULL,'Advance Payment',NULL,1,'2023-02-16 06:22:55','2023-02-16 06:22:28','2023-02-16 06:22:55'),(26,21,'8368','200','10-50',1,'2023-02-28','2023-02-22',104500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan','sales plan to cam','Ex-Works','2023-02-18 11:51:00',NULL,'Advance Payment',NULL,1,'2023-02-16 06:23:49','2023-02-16 06:22:55','2023-02-16 06:23:49'),(27,21,'4505','100','10-50',1,'2023-02-28','2023-02-22',164500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','In publishing and graphic design, Lorem ipsum is a pla','cam to sales head','sales plan to cam','DAP (Delivered at Place)','2023-02-17 11:51:00',NULL,'Advance Payment',NULL,1,'2023-02-16 06:23:49','2023-02-16 06:22:55','2023-02-16 06:23:49'),(28,22,'8368','200','10-50',1,'2023-02-28','2023-02-22',104500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan','sales plan to cam','Ex-Works','2023-02-18 11:51:00',NULL,'Advance Payment',NULL,1,'2023-02-16 06:24:39','2023-02-16 06:23:49','2023-02-16 06:24:39'),(29,22,'4505','100','10-50',1,'2023-02-28','2023-02-22',164500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','In publishing and graphic design, Lorem ipsum is a pla','cam to sales head','sales plan to cam','DAP (Delivered at Place)','2023-02-17 11:51:00',NULL,'Advance Payment',NULL,1,'2023-02-16 06:24:39','2023-02-16 06:23:49','2023-02-16 06:24:39'),(30,23,'8368','200','10-50',1,'2023-02-28','2023-02-22',104500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','1','In publishing and graphic design, Lorem ipsum is a pla','cam to sales plan','sales plan to cam','Ex-Works','2023-02-18 11:51:00',NULL,'Advance Payment',NULL,1,NULL,'2023-02-16 06:24:39','2023-02-16 06:24:39'),(31,23,'4505','100','10-50',1,'2023-02-28','2023-02-22',164500.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','In publishing and graphic design, Lorem ipsum is a pla','cam to sales head','sales plan to cam','DAP (Delivered at Place)','2023-02-17 11:51:00',NULL,'Advance Payment',NULL,1,NULL,'2023-02-16 06:24:39','2023-02-16 06:24:39'),(34,26,'7469','100','10-70',1,'2023-02-26','2023-02-18',0.00,1000000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.','','','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',3,'2023-02-17 03:56:26','2023-02-17 00:31:10','2023-02-17 03:56:26'),(35,27,'9338','100','10-70',2,'2023-02-26','2023-02-18',107000.00,150000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','3','1','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to','Ex-Works','2023-02-25 06:52:00',NULL,'Advance Payment','0',0,NULL,'2023-02-17 01:22:14','2023-02-17 01:22:14'),(36,28,'4884','150','10-70',29,'2023-02-23','2023-02-18',0.00,100000.00,'Nagpur, Maharashtra','DEPOT','Maharashtra','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.\nSince component logic is written in JavaScript instead of templates, you can easily pass rich data through y','','','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,'2023-02-17 01:47:11','2023-02-17 01:25:04','2023-02-17 01:47:11'),(37,29,'4884','75','10-70',29,'2023-02-23','2023-02-18',0.00,100000.00,'Nagpur, Maharashtra','DEPOT','Maharashtra','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.\nSince component logic is written in JavaScript instead of templates, you can easily pass rich data through y','Cam to sales','','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,'2023-02-17 03:46:50','2023-02-17 01:47:11','2023-02-17 03:46:50'),(38,29,'8189','75','10-70',31,'2023-02-28','2023-02-26',0.00,100000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','3','1','','Cam to sales 2','','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,'2023-02-17 03:46:50','2023-02-17 01:47:11','2023-02-17 03:46:50'),(39,30,'4884','75','10-70',29,'2023-02-23','2023-02-18',0.00,100000.00,'Nagpur, Maharashtra','DEPOT','Maharashtra','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.\nSince component logic is written in JavaScript instead of templates, you can easily pass rich data through y','Cam to sales','sales to cam','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,NULL,'2023-02-17 03:46:50','2023-02-17 03:46:50'),(40,30,'8189','75','10-70',31,'2023-02-28','2023-02-26',0.00,100000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','3','1','','Cam to sales 2','sales to cam','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,NULL,'2023-02-17 03:46:50','2023-02-17 03:46:50'),(41,31,'7469','100','10-70',1,'2023-02-26','2023-02-18',0.00,1000000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.','Cam to sales planing','','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',3,'2023-02-17 03:57:12','2023-02-17 03:56:26','2023-02-17 03:57:12'),(42,32,'7469','100','10-70',1,'2023-02-26','2023-02-18',0.00,1000000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.','Cam to sales planing','sales 2 cam','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',3,'2023-02-17 03:58:26','2023-02-17 03:57:12','2023-02-17 03:58:26'),(43,33,'7469','100','10-70',1,'2023-02-26','2023-02-18',106500.00,1000000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.','Cam to sales head','sales 2 cam','Ex-Works','2023-02-19 09:28:00','0000-00-00','Advance Payment','0',3,'2023-02-17 04:02:06','2023-02-17 03:58:26','2023-02-17 04:02:06'),(44,34,'7469','100','10-70',1,'2023-02-26','2023-02-18',106500.00,1000000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.','Cam to sales head','sales 2 cam','Ex-Works','2023-02-19 09:28:00','0000-00-00','Advance Payment','',3,'2023-02-17 04:03:58','2023-02-17 04:02:06','2023-02-17 04:03:58'),(45,35,'7469','100','10-70',1,'2023-02-26','2023-02-18',106500.00,1000000.00,'FAP Bamnipal, Odisha','PLANT','Odisha','3','1','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.','Cam to customer ','sales 2 cam','Ex-Works','2023-02-19 09:28:00','0000-00-00','Advance Payment','',3,NULL,'2023-02-17 04:03:58','2023-02-17 04:03:58'),(46,36,'5697','200','0-3',14,'2023-02-28','2023-02-23',0.00,100000.00,'','','','2','4','cus to cam','','','DAP (Delivered at Place)','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,'2023-02-17 04:44:37','2023-02-17 04:43:35','2023-02-17 04:44:37'),(47,37,'5697','200','0-3',14,'2023-02-28','2023-02-23',0.00,100000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','2','4','cus to cam','cam to sales','','DAP (Delivered at Place)','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,'2023-02-17 04:46:30','2023-02-17 04:44:37','2023-02-17 04:46:30'),(48,38,'5697','200','0-3',14,'2023-02-28','2023-02-23',0.00,100000.00,'FAP Gopalpur, Odisha','PLANT','Odisha','2','4','cus to cam','cam to sales','sales to cam','DAP (Delivered at Place)','0000-00-00 00:00:00','0000-00-00','Advance Payment','',0,NULL,'2023-02-17 04:46:30','2023-02-17 04:46:30'),(49,39,'1397','100','0-3',14,'2023-02-28','2023-02-20',0.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam','','','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:18:15','2023-02-17 05:15:25','2023-02-17 05:18:15'),(50,39,'8737','200','10-80',1,'2023-02-28','2023-02-22',0.00,100000.00,'','','','2','4','cus to cam dap','','','DAP (Delivered at Place)','0000-00-00 00:00:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:18:15','2023-02-17 05:15:25','2023-02-17 05:18:15'),(51,40,'1397','100','0-3',14,'2023-02-28','2023-02-20',0.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam','Cam to sales ','','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:20:15','2023-02-17 05:18:15','2023-02-17 05:20:15'),(52,40,'8737','200','10-80',1,'2023-02-28','2023-02-22',0.00,100000.00,'','','','2','4','cus to cam dap','Cam to sales 2','','DAP (Delivered at Place)','0000-00-00 00:00:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:20:15','2023-02-17 05:18:15','2023-02-17 05:20:15'),(53,41,'1397','100','0-3',14,'2023-02-28','2023-02-20',0.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam','Cam to sales','sales to cam','Ex-Works','0000-00-00 00:00:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:21:45','2023-02-17 05:20:15','2023-02-17 05:21:45'),(54,41,'8737','200','10-80',1,'2023-02-28','2023-02-22',0.00,100000.00,'','','','2','4','cus to cam dap','Cam to sales 2','sales to cam','DAP (Delivered at Place)','0000-00-00 00:00:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:21:45','2023-02-17 05:20:15','2023-02-17 05:21:45'),(55,42,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam','Cam to sales head','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','0',1,'2023-02-17 05:23:51','2023-02-17 05:21:45','2023-02-17 05:23:51'),(56,42,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to sales head 2','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','0',1,'2023-02-17 05:23:51','2023-02-17 05:21:45','2023-02-17 05:23:51'),(57,43,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam','Cam to sales head','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:25:26','2023-02-17 05:23:51','2023-02-17 05:25:26'),(58,43,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to sales head 2','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:25:26','2023-02-17 05:23:51','2023-02-17 05:25:26'),(59,44,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:26:30','2023-02-17 05:25:26','2023-02-17 05:26:30'),(60,44,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:26:30','2023-02-17 05:25:26','2023-02-17 05:26:30'),(61,45,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:29:18','2023-02-17 05:26:30','2023-02-17 05:29:18'),(62,45,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:29:18','2023-02-17 05:26:30','2023-02-17 05:29:18'),(63,46,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:33:24','2023-02-17 05:29:18','2023-02-17 05:33:24'),(64,46,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:33:24','2023-02-17 05:29:18','2023-02-17 05:33:24'),(65,47,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:38:08','2023-02-17 05:33:24','2023-02-17 05:38:08'),(66,47,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:38:08','2023-02-17 05:33:24','2023-02-17 05:38:08'),(67,48,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:44:59','2023-02-17 05:38:08','2023-02-17 05:44:59'),(68,48,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:44:59','2023-02-17 05:38:08','2023-02-17 05:44:59'),(69,49,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:48:06','2023-02-17 05:44:59','2023-02-17 05:48:06'),(70,49,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:48:06','2023-02-17 05:44:59','2023-02-17 05:48:06'),(71,50,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:55:22','2023-02-17 05:48:06','2023-02-17 05:55:22'),(72,50,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:55:22','2023-02-17 05:48:06','2023-02-17 05:55:22'),(73,51,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:57:54','2023-02-17 05:55:22','2023-02-17 05:57:54'),(74,51,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,'2023-02-17 05:57:54','2023-02-17 05:55:22','2023-02-17 05:57:54'),(75,52,'1397','100','0-3',14,'2023-02-28','2023-02-20',102000.00,100000.00,'FAP Athagarh, Odisha','PLANT','Odisha','2','4','cus to cam, okk i agree','Cam to Customer','sales to cam','Ex-Works','2023-02-26 10:51:00','0000-00-00','Advance Payment','',1,NULL,'2023-02-17 05:57:54','2023-02-17 05:57:54'),(76,52,'8737','200','10-80',1,'2023-02-28','2023-02-22',107000.00,100000.00,'Faridabad, Haryana','DEPOT','Haryana','2','4','cus to cam dap','Cam to Customer accepted','sales to cam','DAP (Delivered at Place)','2023-02-24 10:51:00','0000-00-00','Advance Payment','',1,NULL,'2023-02-17 05:57:54','2023-02-17 05:57:54');
/*!40000 ALTER TABLE `quote_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quote_no` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(19,2) NOT NULL,
  `kam_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=ongoing,1=approved,2=rejected,4=approved,5=sales-confirm',
  `cus_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=ongoing,1=approved,2=rejected',
  `quote_type` text COLLATE utf8mb4_unicode_ci,
  `reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_till` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quotes_quote_no_unique` (`quote_no`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (1,9064,3,'1',1,'RFQ6514',100.00,0,0,'C',NULL,NULL,'2023-02-14 05:08:53','2023-02-14 05:04:58','2023-02-14 05:08:53'),(2,9236,3,'1',1,'RFQ6514',100.00,7,0,'Kam',NULL,NULL,'2023-02-14 05:12:01','2023-02-14 05:08:53','2023-02-14 05:12:01'),(3,127,3,'1',1,'RFQ6514',100.00,5,0,'Sales',NULL,NULL,'2023-02-14 05:13:11','2023-02-14 05:12:01','2023-02-14 05:13:11'),(4,1242,3,'1',1,'RFQ6514',100.00,8,0,'Kam',NULL,NULL,'2023-02-14 05:15:17','2023-02-14 05:13:11','2023-02-14 05:15:17'),(5,863,3,'1',1,'RFQ6514',100.00,6,0,'SM',NULL,NULL,'2023-02-14 05:18:22','2023-02-14 05:15:17','2023-02-14 05:18:22'),(6,3565,3,'1',1,'RFQ6514',100.00,6,0,'C',NULL,NULL,'2023-02-14 05:19:29','2023-02-14 05:18:22','2023-02-14 05:19:29'),(7,6570,3,'1',1,'RFQ6514',100.00,6,0,'Kam',NULL,NULL,'2023-02-14 05:21:09','2023-02-14 05:19:29','2023-02-14 05:21:09'),(8,3337,3,'1',1,'RFQ6514',100.00,6,0,'C',NULL,NULL,'2023-02-14 05:21:37','2023-02-14 05:21:09','2023-02-14 05:21:37'),(9,2811,3,'1',1,'RFQ6514',100.00,6,0,NULL,NULL,NULL,'2023-02-14 05:28:17','2023-02-14 05:21:37','2023-02-14 05:28:17'),(10,7168,3,'1',1,'RFQ6514',100.00,6,0,NULL,NULL,NULL,'2023-02-14 06:01:39','2023-02-14 05:28:17','2023-02-14 06:01:39'),(11,1014,3,'1',1,'RFQ6514',100.00,4,0,NULL,NULL,NULL,'2023-02-14 06:13:20','2023-02-14 06:01:39','2023-02-14 06:13:20'),(12,3871,3,'1',1,'RFQ6514',100.00,4,0,NULL,NULL,NULL,NULL,'2023-02-14 06:13:20','2023-02-14 06:13:20'),(13,8023,3,'1',1,'RFQ1438',100.00,0,0,'C',NULL,NULL,'2023-02-16 02:15:18','2023-02-16 01:18:00','2023-02-16 02:15:18'),(14,601,3,'1',1,'RFQ1438',100.00,7,0,'Kam',NULL,NULL,'2023-02-16 02:29:49','2023-02-16 02:15:18','2023-02-16 02:29:49'),(15,9275,3,'1',1,'RFQ1438',100.00,5,0,'Sales',NULL,NULL,'2023-02-17 01:22:14','2023-02-16 02:29:49','2023-02-17 01:22:14'),(16,628,3,'1',1,'RFQ8781',300.00,0,0,'C',NULL,NULL,'2023-02-16 06:07:43','2023-02-16 06:05:39','2023-02-16 06:07:43'),(17,9424,3,'1',1,'RFQ8781',300.00,7,0,'Kam',NULL,NULL,'2023-02-16 06:14:05','2023-02-16 06:07:43','2023-02-16 06:14:05'),(18,7308,3,'1',1,'RFQ8781',300.00,5,0,'Sales',NULL,NULL,'2023-02-16 06:21:59','2023-02-16 06:14:05','2023-02-16 06:21:59'),(19,5874,3,'1',1,'RFQ8781',300.00,8,0,'Kam',NULL,NULL,'2023-02-16 06:22:28','2023-02-16 06:21:59','2023-02-16 06:22:28'),(20,5886,3,'1',1,'RFQ8781',300.00,6,0,'SM',NULL,NULL,'2023-02-16 06:22:55','2023-02-16 06:22:28','2023-02-16 06:22:55'),(21,9721,3,'1',1,'RFQ8781',300.00,6,0,'Kam',NULL,NULL,'2023-02-16 06:23:49','2023-02-16 06:22:55','2023-02-16 06:23:49'),(22,672,3,'1',1,'RFQ8781',300.00,6,0,'C',NULL,NULL,'2023-02-16 06:24:39','2023-02-16 06:23:49','2023-02-16 06:24:39'),(23,3218,3,'1',1,'RFQ8781',300.00,4,0,NULL,NULL,NULL,NULL,'2023-02-16 06:24:39','2023-02-16 06:24:41'),(26,3645,3,'1',1,'RFQ6570',100.00,0,0,'C',NULL,NULL,'2023-02-17 03:56:26','2023-02-17 00:31:10','2023-02-17 03:56:26'),(27,3633,3,'1',1,'RFQ1438',100.00,8,0,'Kam',NULL,NULL,NULL,'2023-02-17 01:22:14','2023-02-17 01:22:17'),(28,8011,3,'2',4,'RFQ1332',150.00,0,0,'C',NULL,NULL,'2023-02-17 01:47:11','2023-02-17 01:25:04','2023-02-17 01:47:11'),(29,5008,3,'2',4,'RFQ1332',150.00,7,0,'Kam',NULL,NULL,'2023-02-17 03:46:49','2023-02-17 01:47:11','2023-02-17 03:46:49'),(30,4245,3,'2',4,'RFQ1332',150.00,5,0,'Sales',NULL,NULL,NULL,'2023-02-17 03:46:49','2023-02-17 03:46:51'),(31,4330,3,'1',1,'RFQ6570',100.00,7,0,'Kam',NULL,NULL,'2023-02-17 03:57:12','2023-02-17 03:56:26','2023-02-17 03:57:12'),(32,3477,3,'1',1,'RFQ6570',100.00,5,0,'Sales',NULL,NULL,'2023-02-17 03:58:26','2023-02-17 03:57:12','2023-02-17 03:58:26'),(33,8792,3,'1',1,'RFQ6570',100.00,8,0,'Kam',NULL,NULL,'2023-02-17 04:02:06','2023-02-17 03:58:26','2023-02-17 04:02:06'),(34,3439,3,'1',1,'RFQ6570',100.00,6,0,'SM',NULL,NULL,'2023-02-17 04:03:58','2023-02-17 04:02:06','2023-02-17 04:03:58'),(35,7548,3,'1',1,'RFQ6570',100.00,6,0,'Kam',NULL,NULL,NULL,'2023-02-17 04:03:58','2023-02-17 04:03:58'),(36,4701,3,'1',1,'RFQ2677',200.00,0,0,'C',NULL,NULL,'2023-02-17 04:44:37','2023-02-17 04:43:35','2023-02-17 04:44:37'),(37,9774,3,'1',1,'RFQ2677',200.00,7,0,'Kam',NULL,NULL,'2023-02-17 04:46:30','2023-02-17 04:44:37','2023-02-17 04:46:30'),(38,1693,3,'1',1,'RFQ2677',200.00,5,0,'Sales',NULL,NULL,NULL,'2023-02-17 04:46:30','2023-02-17 04:46:33'),(39,7862,3,'1',1,'RFQ5427',300.00,0,0,'C',NULL,NULL,'2023-02-17 05:18:15','2023-02-17 05:15:25','2023-02-17 05:18:15'),(40,2296,3,'1',1,'RFQ5427',300.00,7,0,'Kam',NULL,NULL,'2023-02-17 05:20:15','2023-02-17 05:18:15','2023-02-17 05:20:15'),(41,7280,3,'1',1,'RFQ5427',300.00,5,0,'Sales',NULL,NULL,'2023-02-17 05:21:45','2023-02-17 05:20:15','2023-02-17 05:21:45'),(42,3865,3,'1',1,'RFQ5427',300.00,8,0,'Kam',NULL,NULL,'2023-02-17 05:23:51','2023-02-17 05:21:45','2023-02-17 05:23:51'),(43,8861,3,'1',1,'RFQ5427',300.00,6,0,'SM',NULL,NULL,'2023-02-17 05:25:26','2023-02-17 05:23:51','2023-02-17 05:25:26'),(44,6305,3,'1',1,'RFQ5427',300.00,6,0,'Kam',NULL,NULL,'2023-02-17 05:26:30','2023-02-17 05:25:26','2023-02-17 05:26:30'),(45,2529,3,'1',1,'RFQ5427',300.00,6,0,'C',NULL,NULL,'2023-02-17 05:29:18','2023-02-17 05:26:30','2023-02-17 05:29:18'),(46,1187,3,'1',1,'RFQ5427',300.00,6,0,'C',NULL,NULL,'2023-02-17 05:33:24','2023-02-17 05:29:18','2023-02-17 05:33:24'),(47,7992,3,'1',1,'RFQ5427',300.00,6,0,'C',NULL,NULL,'2023-02-17 05:38:08','2023-02-17 05:33:24','2023-02-17 05:38:08'),(48,5797,3,'1',1,'RFQ5427',300.00,6,0,'C',NULL,NULL,'2023-02-17 05:44:58','2023-02-17 05:38:08','2023-02-17 05:44:58'),(49,8544,3,'1',1,'RFQ5427',300.00,6,0,'C',NULL,NULL,'2023-02-17 05:48:06','2023-02-17 05:44:58','2023-02-17 05:48:06'),(50,8319,3,'1',1,'RFQ5427',300.00,6,0,'C',NULL,NULL,'2023-02-17 05:55:22','2023-02-17 05:48:06','2023-02-17 05:55:22'),(51,8859,3,'1',1,'RFQ5427',300.00,6,0,'C',NULL,NULL,'2023-02-17 05:57:54','2023-02-17 05:55:22','2023-02-17 05:57:54'),(52,8537,3,'1',1,'RFQ5427',300.00,4,0,'',NULL,NULL,NULL,'2023-02-17 05:57:54','2023-02-17 05:57:56');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_logs`
--

DROP TABLE IF EXISTS `registration_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_logs`
--

LOCK TABLES `registration_logs` WRITE;
/*!40000 ALTER TABLE `registration_logs` DISABLE KEYS */;
INSERT INTO `registration_logs` VALUES (2,'106','amitbeas17@gmail.com','2023-02-14',1,'2023-01-30 04:41:33','2023-02-14 05:56:49'),(3,'5','arun.sarkar@beas.co.in','2023-02-14',1,'2023-01-30 04:41:33','2023-02-14 05:45:29'),(4,'96','siddharth.mishra@tatasteelmining.com','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02'),(5,'97','apoorv.gupta@tatasteelmining.com','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02'),(6,'98','debraj.mukherjee1@tatasteelmining.com','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02'),(7,'99','anupam.ghosh@tatasteelmining.com','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02'),(8,'100','sanchita.bandyopadhyay@mjunction.in','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02'),(9,'101','bhaskar.chakraborty@mjunction.in','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02'),(10,'102','rahul.maurya@mjunction.in','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02'),(11,'103','rahulkmaurya@gmail.com','2023-01-30',1,'2023-01-30 04:41:33','2023-01-30 07:01:02');
/*!40000 ALTER TABLE `registration_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks`
--

DROP TABLE IF EXISTS `remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remarks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sche_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `camremarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salesremarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remarks`
--

LOCK TABLES `remarks` WRITE;
/*!40000 ALTER TABLE `remarks` DISABLE KEYS */;
INSERT INTO `remarks` VALUES (1,'RFQ6662','8442','document or a typeface without relying on meaningful content.',NULL,NULL,'C','Kam',1,'2023-01-19 04:47:54','2023-01-19 04:47:54'),(2,'RFQ6662','7111','document or a typeface without relying on meaningful content.\ndocument or a typeface without relying on meaningful content.',NULL,NULL,'C','Kam',1,'2023-01-19 04:47:54','2023-01-19 04:47:54'),(3,'RFQ6662','8442','document or a typeface without relying on meaningful content.\ndocument or a typeface without relying on meaningful content.','document or a typeface without relying on meaningful content.\ndocument or a typeface without relying on meaningful content. 1111111111',NULL,'Kam','Sales',1,'2023-01-19 04:50:11','2023-01-19 04:50:11'),(4,'RFQ6662','7111','document or a typeface without relying on meaningful content.\ndocument or a typeface without relying on meaningful content.','document or a typeface without relying on meaningful content.0222222222222',NULL,'Kam','Sales',1,'2023-01-19 04:50:11','2023-01-19 04:50:11'),(5,'RFQ5381','8892','When modals become too long for the user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.',NULL,NULL,'C','Kam',1,'2023-01-25 03:25:41','2023-01-25 03:25:41'),(6,'RFQ5381','8892','When modals become too long for the user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','The user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.',NULL,'Kam','Sales',1,'2023-01-25 03:28:07','2023-01-25 03:28:07'),(7,'RFQ5381','8892','When modals become too long for the user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','The user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','Tooltips and popovers can be placed within modals as needed. When modals are closed, any tooltips and popovers within are also automatically dismissed.','Sales','Kam',1,'2023-01-25 03:31:08','2023-01-25 03:31:08'),(8,'RFQ5381','8892','When modals become too long for the user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','The user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.\nThe user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','Tooltips and popovers can be placed within modals as needed. When modals are closed, any tooltips and popovers within are also automatically dismissed.','Kam','SM',1,'2023-01-25 03:33:45','2023-01-25 03:33:45'),(9,'RFQ5381','8892','When modals become too long for the user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','The user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.\nThe user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','Tooltips and popovers can be placed within modals as needed. When modals are closed, any tooltips and popovers within are also automatically dismissed.','SM','Kam',1,'2023-01-25 03:36:41','2023-01-25 03:36:41'),(10,'RFQ5381','8892','When modals become too long for the user’s viewport or device, they scroll independent of the page itself. Try the demo below to see what we mean.','( From CAM ) YouTube videos in modals requires additional JavaScript not in Bootstrap to automatically stop playback and more. See this helpful Stack Overflow post for more information.','Tooltips and popovers can be placed within modals as needed. When modals are closed, any tooltips and popovers within are also automatically dismissed.','Kam','C',1,'2023-01-25 03:39:57','2023-01-25 03:39:57'),(11,'RFQ2708','5366','Ranked among the top seven global chrome alloy producers, we are the leading manufacturer of High Carbon Ferro Chrome in India.',NULL,NULL,'C','Kam',1,'2023-01-25 04:07:57','2023-01-25 04:07:57'),(12,'RFQ2708','5366','Ranked among the top seven global chrome alloy producers, we are the leading manufacturer of High Carbon Ferro Chrome in India.','CAM\'s Remarks today',NULL,'Kam','Sales',1,'2023-01-25 04:10:11','2023-01-25 04:10:11'),(13,'RFQ2708','5366','Ranked among the top seven global chrome alloy producers, we are the leading manufacturer of High Carbon Ferro Chrome in India.','CAM\'s Remarks today','Sales Planning Remarks  today 2','Sales','Kam',1,'2023-01-25 04:11:34','2023-01-25 04:11:34'),(14,'RFQ2708','5366','Ranked among the top seven global chrome alloy producers, we are the leading manufacturer of High Carbon Ferro Chrome in India.','CAM\'s Remarks today','Sales Planning Remarks  today 2','Kam','SM',1,'2023-01-25 04:13:09','2023-01-25 04:13:09'),(15,'RFQ2708','5366','Ranked among the top seven global chrome alloy producers, we are the leading manufacturer of High Carbon Ferro Chrome in India.','CAM\'s Remarks today','Sales Planning Remarks  today 2','SM','Kam',1,'2023-01-25 04:14:25','2023-01-25 04:14:25'),(16,'RFQ2708','5366','Ranked among the top seven global chrome alloy producers, we are the leading manufacturer of High Carbon Ferro Chrome in India.','CAM\'s Remarks requoted new for today','Sales Planning Remarks  today 2','Kam','C',1,'2023-01-25 04:15:43','2023-01-25 04:15:43'),(17,'RFQ5511','3970','In publishing and graphic design, Lorem ipsum is a placeholder text commonly (Customer to CAM)',NULL,NULL,'C','Kam',1,'2023-01-25 06:38:29','2023-01-25 06:38:29'),(18,'RFQ5511','3970',NULL,'In publishing and graphic design, Lorem ipsum is (CAM to Sales planning)',NULL,'Kam','Sales',1,'2023-01-25 06:39:32','2023-01-25 06:39:32'),(19,'RFQ5511','3970',NULL,NULL,'India, officially the Republic of India, is a country in South Asia.(Sales planning to CAM)','Sales','Kam',1,'2023-01-25 06:41:53','2023-01-25 06:41:53'),(20,'RFQ5511','3970',NULL,'Hello Hi Head is (CAM to Sales Head)',NULL,'Kam','SM',1,'2023-01-25 06:43:34','2023-01-25 06:43:34'),(21,'RFQ5511','3970','In publishing and graphic design, Lorem ipsum is a placeholder text commonly (Customer to CAM)','Hello Hi Head is (CAM to Sales Head)','India, officially the Republic of India, is a country in South Asia.(Sales planning to CAM)','SM','Kam',1,'2023-01-25 06:45:11','2023-01-25 06:45:11'),(22,'RFQ9966','1316','In publishing and graphic design, Lorem ipsum is a placeholder text (Customer)',NULL,NULL,'C','Kam',1,'2023-01-31 01:01:57','2023-01-31 01:01:57'),(23,'RFQ9966','2721','In publishing and graphic design, Lorem ipsum is a placeholder text In publishing and graphic design, Lorem ipsum is a placeholder text  (Customer)',NULL,NULL,'C','Kam',1,'2023-01-31 01:01:57','2023-01-31 01:01:57'),(24,'RFQ9966','1316',NULL,'In publishing and graphic design, Lorem ipsum (CAM)',NULL,'Kam','Sales',1,'2023-01-31 01:09:19','2023-01-31 01:09:19'),(25,'RFQ9966','2721',NULL,'In publishing and graphic design, Lorem ipsum Hello (CAM)',NULL,'Kam','Sales',1,'2023-01-31 01:09:19','2023-01-31 01:09:19'),(26,'RFQ9966','1316',NULL,NULL,'In publishing and graphic design, Lorem ipsum Hi Hi (Sales Planning)','Sales','Kam',1,'2023-01-31 01:19:05','2023-01-31 01:19:05'),(27,'RFQ9966','2721',NULL,NULL,'In publishing and graphic design, Lorem ipsum welcome (Sales Planning)','Sales','Kam',1,'2023-01-31 01:19:05','2023-01-31 01:19:05'),(28,'RFQ9966','1316',NULL,'In publishing and graphic design, Lorem ipsum (CAM remarks again-1)',NULL,'Kam','SM',1,'2023-01-31 01:21:55','2023-01-31 01:21:55'),(29,'RFQ9966','2721',NULL,'In publishing and graphic design, Lorem ipsum Hello (CAM remarks again-2)',NULL,'Kam','SM',1,'2023-01-31 01:21:55','2023-01-31 01:21:55'),(30,'RFQ4451','2155','commonly used to demonstrate the visual form of a document (Customer to CAM)',NULL,NULL,'C','Kam',1,'2023-01-31 05:25:13','2023-01-31 05:25:13'),(31,'RFQ4451','2155',NULL,'Hello after Tentative delivery date(CAM to Sales Planning)',NULL,'Kam','Sales',1,'2023-01-31 05:27:07','2023-01-31 05:27:07'),(32,'RFQ4451','2155',NULL,NULL,'I am Sales Planning date not available (Sales pl to CAM)','Sales','Kam',1,'2023-01-31 05:30:12','2023-01-31 05:30:12'),(33,'RFQ4451','2155',NULL,'Hello after Tentative delivery date(CAM to Sales Planning) Please check again',NULL,'Kam','Sales',1,'2023-01-31 05:31:09','2023-01-31 05:31:09'),(34,'RFQ4451','2155',NULL,NULL,'I am Sales Planning date not available (Sales pl to CAM) Okk','Sales','Kam',1,'2023-01-31 05:31:48','2023-01-31 05:31:48'),(35,'RFQ4451','2155',NULL,'Hello after Tentative delivery date(CAM to Sales Head)',NULL,'Kam','SM',1,'2023-01-31 05:32:57','2023-01-31 05:32:57'),(36,'RFQ4451','2155',NULL,'Hello after Tentative delivery date(CAM to Customer) hello Cust',NULL,'Kam','C',1,'2023-01-31 05:35:58','2023-01-31 05:35:58'),(37,'RFQ4451','2155',NULL,'Hello after Tentative delivery date(CAM to Customer) accepting this',NULL,'Kam','C',1,'2023-01-31 05:38:19','2023-01-31 05:38:19'),(38,'RFQ4470','4243','Hello Hello',NULL,NULL,'C','Kam',1,'2023-02-01 00:25:42','2023-02-01 00:25:42'),(39,'RFQ4470','4243',NULL,'Information contained and transmitted by this e-mail is confidential and proprietary to Tata Steel Mining Ltd. and is intended for use only by',NULL,'Kam','Sales',1,'2023-02-01 00:43:49','2023-02-01 00:43:49'),(40,'RFQ4470','4243',NULL,NULL,'Information contained and transmitted by this e-mail Okkkk (From SP)','Sales','Kam',1,'2023-02-01 01:59:43','2023-02-01 01:59:43'),(41,'RFQ4470','4243',NULL,'Information contained and transmitted by (CAM to SH)',NULL,'Kam','SM',1,'2023-02-01 02:01:12','2023-02-01 02:01:12'),(42,'RFQ2013','8418','The ability to display the pdf is entirely dependent on whether the user has a plugin available to display the pdf and also has their',NULL,NULL,'C','Kam',1,'2023-02-01 04:25:03','2023-02-01 04:25:03'),(43,'RFQ2013','8418',NULL,'The ability to display the pdf (Cam to SP)',NULL,'Kam','Sales',1,'2023-02-01 04:27:02','2023-02-01 04:27:02'),(44,'RFQ2013','8418',NULL,NULL,'The ability to display the pdf is entirely dependent (SP to CAM)','Sales','Kam',1,'2023-02-01 04:29:02','2023-02-01 04:29:02'),(45,'RFQ2013','8418',NULL,'The ability to display the pdf (Cam to SH)',NULL,'Kam','SM',1,'2023-02-01 04:30:24','2023-02-01 04:30:24'),(46,'RFQ2013','8418',NULL,'The ability to display the pdf (Cam to SH)',NULL,'Kam','C',1,'2023-02-01 05:28:08','2023-02-01 05:28:08'),(47,'RFQ2013','8418',NULL,'The ability to display the pdf (Cam to SH)',NULL,'Kam','C',1,'2023-02-01 05:36:42','2023-02-01 05:36:42'),(48,'RFQ4452','9635','There\'s now a great way of doing this called findIndex which takes a function that return true / false based',NULL,NULL,'C','Kam',1,'2023-02-01 06:05:37','2023-02-01 06:05:37'),(49,'RFQ4452','9635',NULL,'called findIndex which takes a function that return true / false based (CAM to SP)',NULL,'Kam','Sales',1,'2023-02-01 06:07:19','2023-02-01 06:07:19'),(50,'RFQ4452','9635',NULL,NULL,'findIndex which takes a function that return true / false based (SP to CAM)','Sales','Kam',1,'2023-02-01 06:08:07','2023-02-01 06:08:07'),(51,'RFQ4452','9635',NULL,'which takes a function (CAM to SH)',NULL,'Kam','SM',1,'2023-02-01 06:09:56','2023-02-01 06:09:56'),(52,'RFQ4452','9635',NULL,'Customertakes a function (CAM to CUST)',NULL,'Kam','C',1,'2023-02-01 06:12:11','2023-02-01 06:12:11'),(53,'RFQ4452','9635',NULL,'Customertakes a function (CAM to CUST - Accept)',NULL,'Kam','C',1,'2023-02-01 06:15:36','2023-02-01 06:15:36'),(54,'RFQ7617','6893','Helloooo',NULL,NULL,'C','Kam',1,'2023-02-01 07:03:00','2023-02-01 07:03:00'),(55,'RFQ7617','6893',NULL,'Remarks from CAM to SP',NULL,'Kam','Sales',1,'2023-02-01 07:07:50','2023-02-01 07:07:50'),(56,'RFQ7617','6893',NULL,NULL,'Okkk SP to CAM','Sales','Kam',1,'2023-02-01 07:09:19','2023-02-01 07:09:19'),(57,'RFQ7617','6893',NULL,'Remarks from CAM to SH',NULL,'Kam','SM',1,'2023-02-01 07:09:58','2023-02-01 07:09:58'),(58,'RFQ3742','4200','Hello CAM',NULL,NULL,'C','Kam',1,'2023-02-06 00:12:53','2023-02-06 00:12:53'),(59,'RFQ3742','4200',NULL,'Date and Qty added',NULL,'Kam','Sales',1,'2023-02-06 03:43:59','2023-02-06 03:43:59'),(60,'RFQ3742','2924',NULL,'Added also here',NULL,'Kam','Sales',1,'2023-02-06 03:43:59','2023-02-06 03:43:59'),(61,'RFQ3742','4200',NULL,NULL,'Ok it\'s fine','Sales','Kam',1,'2023-02-06 04:30:46','2023-02-06 04:30:46'),(62,'RFQ3742','2924',NULL,NULL,'It is good','Sales','Kam',1,'2023-02-06 04:30:46','2023-02-06 04:30:46'),(63,'RFQ3742','4200',NULL,'Date and Qty added (price added - now CAM to SH)',NULL,'Kam','SM',1,'2023-02-06 04:33:03','2023-02-06 04:33:03'),(64,'RFQ3742','2924',NULL,'Added also here (price added - now CAM to SH)',NULL,'Kam','SM',1,'2023-02-06 04:33:03','2023-02-06 04:33:03'),(65,'RFQ3742','4200',NULL,'Date and Qty added (price added - now CAM to SH)\nAccepting for CAM side',NULL,'Kam','C',1,'2023-02-06 04:48:42','2023-02-06 04:48:42'),(66,'RFQ3742','2924',NULL,'Added also here (price added - now CAM to SH)',NULL,'Kam','C',1,'2023-02-06 04:48:42','2023-02-06 04:48:42'),(67,'RFQ3988','7180','Add one more RFQ',NULL,NULL,'C','Kam',1,'2023-02-06 04:56:49','2023-02-06 04:56:49'),(68,'RFQ3988','7180',NULL,'Hello Sales pl',NULL,'Kam','Sales',1,'2023-02-06 04:59:27','2023-02-06 04:59:27'),(69,'RFQ3988','3149',NULL,'Hello SP',NULL,'Kam','Sales',1,'2023-02-06 04:59:27','2023-02-06 04:59:27'),(70,'RFQ3988','7180',NULL,NULL,'Okk hfhjds','Sales','Kam',1,'2023-02-06 05:04:39','2023-02-06 05:04:39'),(71,'RFQ3988','3149',NULL,NULL,'jhdsgfjsdgff fsfsdfsd','Sales','Kam',1,'2023-02-06 05:04:39','2023-02-06 05:04:39'),(72,'RFQ3988','7180',NULL,'Hello Sales pl dfgdfgfdgdf',NULL,'Kam','SM',1,'2023-02-06 05:06:17','2023-02-06 05:06:17'),(73,'RFQ3988','3149',NULL,'Hello SP fdfgfdgdfgd',NULL,'Kam','SM',1,'2023-02-06 05:06:17','2023-02-06 05:06:17'),(74,'RFQ7392','1534','Hello Hi Hello Hello',NULL,NULL,'C','Kam',1,'2023-02-06 05:35:28','2023-02-06 05:35:28'),(75,'RFQ6680','4418','Wikis are enabled by wiki software, otherwise known as wiki engines. A wiki engine, being a',NULL,NULL,'C','Kam',1,'2023-02-06 05:55:29','2023-02-06 05:55:29'),(76,'RFQ6680','5281','Wikis are enabled by wiki software, otherwise known as wiki engines. A wiki engine, being a\nWikis are enabled by wiki software, otherwise known as wiki engines. A wiki engine, being a',NULL,NULL,'C','Kam',1,'2023-02-06 05:55:29','2023-02-06 05:55:29'),(77,'RFQ6680','4418',NULL,'One more 75 of 150',NULL,'Kam','Sales',1,'2023-02-06 06:34:05','2023-02-06 06:34:05'),(78,'RFQ6680','5281',NULL,'75 of 150',NULL,'Kam','Sales',1,'2023-02-06 06:34:05','2023-02-06 06:34:05'),(79,'RFQ6680','6024',NULL,'100 added against 200',NULL,'Kam','Sales',1,'2023-02-06 06:34:05','2023-02-06 06:34:05'),(80,'RFQ6680','4455',NULL,'100  added',NULL,'Kam','Sales',1,'2023-02-06 06:34:05','2023-02-06 06:34:05'),(81,'RFQ6680','4418',NULL,NULL,'okk','Sales','Kam',1,'2023-02-06 06:36:17','2023-02-06 06:36:17'),(82,'RFQ6680','5281',NULL,NULL,'JHA jhJH jhGD','Sales','Kam',1,'2023-02-06 06:36:17','2023-02-06 06:36:17'),(83,'RFQ6680','6024',NULL,NULL,'IUDSU UDGSGD KHDKHS','Sales','Kam',1,'2023-02-06 06:36:17','2023-02-06 06:36:17'),(84,'RFQ6680','4455',NULL,NULL,'HJGSJ jhgDJ jHdgjS','Sales','Kam',1,'2023-02-06 06:36:17','2023-02-06 06:36:17'),(85,'RFQ6680','4418',NULL,'One more 75 of 150 (Price added 10600)',NULL,'Kam','SM',1,'2023-02-06 06:42:01','2023-02-06 06:42:01'),(86,'RFQ6680','5281',NULL,'75 of 150 (Price added 113500)',NULL,'Kam','SM',1,'2023-02-06 06:42:01','2023-02-06 06:42:01'),(87,'RFQ6680','6024',NULL,'100 added against 200 (Price added 102739.7)',NULL,'Kam','SM',1,'2023-02-06 06:42:01','2023-02-06 06:42:01'),(88,'RFQ6680','4455',NULL,'100  added (Price added 105642.89)',NULL,'Kam','SM',1,'2023-02-06 06:42:01','2023-02-06 06:42:01'),(89,'RFQ6680','4418',NULL,'One more 75 of 150 (Price added 10600)',NULL,'Kam','C',1,'2023-02-06 06:44:31','2023-02-06 06:44:31'),(90,'RFQ6680','5281',NULL,'75 of 150 (Price added 113500)',NULL,'Kam','C',1,'2023-02-06 06:44:31','2023-02-06 06:44:31'),(91,'RFQ6680','6024',NULL,'100 added against 200 (Price added 102739.7)',NULL,'Kam','C',1,'2023-02-06 06:44:31','2023-02-06 06:44:31'),(92,'RFQ6680','4455',NULL,'100  added (Price added 105642.89)',NULL,'Kam','C',1,'2023-02-06 06:44:31','2023-02-06 06:44:31'),(93,'RFQ6680','4418',NULL,'One more 75 of 150 (Price added 10600)',NULL,'Kam','C',1,'2023-02-06 07:08:25','2023-02-06 07:08:25'),(94,'RFQ6680','5281',NULL,'75 of 150 (Price added 113500)',NULL,'Kam','C',1,'2023-02-06 07:08:25','2023-02-06 07:08:25'),(95,'RFQ6680','6024',NULL,'100 added against 200 (Price added 102739.7)',NULL,'Kam','C',1,'2023-02-06 07:08:25','2023-02-06 07:08:25'),(96,'RFQ6680','4455',NULL,'100  added (Price added 105642.89)',NULL,'Kam','C',1,'2023-02-06 07:08:25','2023-02-06 07:08:25'),(97,'RFQ8566','5577','In publishing and graphic design, Lorem ipsum is a placeholder text',NULL,NULL,'C','Kam',1,'2023-02-06 23:54:15','2023-02-06 23:54:15'),(98,'RFQ8566','9041','In publishing and graphic design, Lorem ipsum is a placeholder text \nIn publishing and graphic design, Lorem ipsum is a placeholder text',NULL,NULL,'C','Kam',1,'2023-02-06 23:54:15','2023-02-06 23:54:15'),(99,'RFQ8566','5577',NULL,'In publishing and graphic design, Lorem ipsum',NULL,'Kam','Sales',1,'2023-02-07 00:15:33','2023-02-07 00:15:33'),(100,'RFQ8566','9041',NULL,'In publishing and graphic design, Lorem ipsum is a placeholde',NULL,'Kam','Sales',1,'2023-02-07 00:15:33','2023-02-07 00:15:33'),(101,'RFQ8566','7821',NULL,'In publishing and graphic design, Lorem ipsum is a placeholder text \nIn publishing and graphic design, Lorem ipsum is a placeholder text',NULL,'Kam','Sales',1,'2023-02-07 00:15:33','2023-02-07 00:15:33'),(102,'RFQ8566','2842',NULL,'In publishing and graphic design, Lorem ipsum is a',NULL,'Kam','Sales',1,'2023-02-07 00:15:33','2023-02-07 00:15:33'),(103,'RFQ8566','5577',NULL,NULL,'In publishing and graphic design, Lorem ipsum is a placeholder','Sales','Kam',1,'2023-02-07 00:31:46','2023-02-07 00:31:46'),(104,'RFQ8566','9041',NULL,NULL,'In publishing and graphic design','Sales','Kam',1,'2023-02-07 00:31:46','2023-02-07 00:31:46'),(105,'RFQ8566','7821',NULL,NULL,'In publishing and graphic design, Lorem ipsum is a placeholder Sales','Sales','Kam',1,'2023-02-07 00:31:46','2023-02-07 00:31:46'),(106,'RFQ8566','2842',NULL,NULL,'In publishing and graphic design, Lorem ipsum is a placeholder \nIn publishing and graphic design, Lorem ipsum is a placeholder text','Sales','Kam',1,'2023-02-07 00:31:46','2023-02-07 00:31:46'),(107,'RFQ8566','5577',NULL,'In publishing and graphic design, Lorem ipsum',NULL,'Kam','SM',1,'2023-02-07 00:35:37','2023-02-07 00:35:37'),(108,'RFQ8566','9041',NULL,'In publishing and graphic design, Lorem ipsum is a placeholde',NULL,'Kam','SM',1,'2023-02-07 00:35:37','2023-02-07 00:35:37'),(109,'RFQ8566','7821',NULL,'In publishing and graphic design, Lorem ipsum is a placeholder text \nIn publishing and graphic design, Lorem ipsum is a placeholder text',NULL,'Kam','SM',1,'2023-02-07 00:35:37','2023-02-07 00:35:37'),(110,'RFQ8566','2842',NULL,'In publishing and graphic design, Lorem ipsum is a',NULL,'Kam','SM',1,'2023-02-07 00:35:37','2023-02-07 00:35:37'),(111,'RFQ8566','5577',NULL,'In publishing and graphic design, Lorem ipsum',NULL,'Kam','C',1,'2023-02-07 05:28:21','2023-02-07 05:28:21'),(112,'RFQ8566','9041',NULL,'In publishing and graphic design, Lorem ipsum is a placeholde',NULL,'Kam','C',1,'2023-02-07 05:28:21','2023-02-07 05:28:21'),(113,'RFQ8566','7821',NULL,'In publishing and graphic design, Lorem ipsum is a placeholder text \nIn publishing and graphic design, Lorem ipsum is a placeholder text',NULL,'Kam','C',1,'2023-02-07 05:28:21','2023-02-07 05:28:21'),(114,'RFQ8566','2842',NULL,'In publishing and graphic design, Lorem ipsum is a',NULL,'Kam','C',1,'2023-02-07 05:28:21','2023-02-07 05:28:21'),(115,'RFQ4418','7487','HDGSAGD KSJADJKASD KDGASKDG KAJSDGKASGD JGDKAJSG AKJSDGAKS',NULL,NULL,'C','Kam',1,'2023-02-13 01:44:01','2023-02-13 01:44:01'),(116,'RFQ6514','1259','JHJGS DSJHGDJH JHSDGJH JHGD JKSDGDGS',NULL,NULL,'C','Kam',1,'2023-02-14 05:04:59','2023-02-14 05:04:59'),(117,'RFQ6514','1259',NULL,'remarks for sles',NULL,'Kam','Sales',1,'2023-02-14 05:08:54','2023-02-14 05:08:54'),(118,'RFQ6514','1259',NULL,NULL,'Okkkk fine','Sales','Kam',1,'2023-02-14 05:12:02','2023-02-14 05:12:02'),(119,'RFQ6514','1259',NULL,'remarks for sles head',NULL,'Kam','SM',1,'2023-02-14 05:13:12','2023-02-14 05:13:12'),(120,'RFQ6514','1259',NULL,'remarks for customer requote',NULL,'Kam','C',1,'2023-02-14 05:19:30','2023-02-14 05:19:30'),(121,'RFQ6298','7164','In publishing and graphic design, Lorem ipsum is a placeholder text,...   cus remarks',NULL,NULL,'C','Kam',1,'2023-02-16 00:59:11','2023-02-16 00:59:11'),(122,'RFQ1438','9338','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',NULL,NULL,'C','Kam',1,'2023-02-16 01:18:02','2023-02-16 01:18:02'),(123,'RFQ9484','6957','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',NULL,NULL,'C','Kam',1,'2023-02-16 01:44:47','2023-02-16 01:44:47'),(124,'RFQ1438','9338',NULL,'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful',NULL,'Kam','Sales',1,'2023-02-16 02:15:20','2023-02-16 02:15:20'),(125,'RFQ1438','9338',NULL,NULL,'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to','Sales','Kam',1,'2023-02-16 02:29:51','2023-02-16 02:29:51'),(126,'RFQ4477','4205','In publishing and graphic design, Lorem ipsum is a pla customer to cam',NULL,NULL,'C','Kam',1,'2023-02-16 05:47:27','2023-02-16 05:47:27'),(127,'RFQ4477','3294','In publishing and graphic design, Lorem ipsum is a pla cus to cam',NULL,NULL,'C','Kam',1,'2023-02-16 05:47:27','2023-02-16 05:47:27'),(128,'RFQ8781','8368','In publishing and graphic design, Lorem ipsum is a pla',NULL,NULL,'C','Kam',1,'2023-02-16 06:05:40','2023-02-16 06:05:40'),(129,'RFQ8781','4505','In publishing and graphic design, Lorem ipsum is a pla',NULL,NULL,'C','Kam',1,'2023-02-16 06:05:40','2023-02-16 06:05:40'),(130,'RFQ8781','8368',NULL,'cam to sales plan',NULL,'Kam','Sales',1,'2023-02-16 06:07:44','2023-02-16 06:07:44'),(131,'RFQ8781','4505',NULL,'cam to sales plan',NULL,'Kam','Sales',1,'2023-02-16 06:07:44','2023-02-16 06:07:44'),(132,'RFQ8781','8368',NULL,NULL,'sales plan to cam','Sales','Kam',1,'2023-02-16 06:14:06','2023-02-16 06:14:06'),(133,'RFQ8781','4505',NULL,NULL,'sales plan to cam','Sales','Kam',1,'2023-02-16 06:14:06','2023-02-16 06:14:06'),(134,'RFQ8781','8368',NULL,'cam to sales plan',NULL,'Kam','SM',1,'2023-02-16 06:22:00','2023-02-16 06:22:00'),(135,'RFQ8781','4505',NULL,'cam to sales head',NULL,'Kam','SM',1,'2023-02-16 06:22:00','2023-02-16 06:22:00'),(136,'RFQ8781','8368',NULL,'cam to sales plan',NULL,'Kam','C',1,'2023-02-16 06:22:56','2023-02-16 06:22:56'),(137,'RFQ8781','4505',NULL,'cam to sales head',NULL,'Kam','C',1,'2023-02-16 06:22:56','2023-02-16 06:22:56'),(138,'RFQ6570','7469','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.',NULL,NULL,'C','Kam',1,'2023-02-17 00:31:11','2023-02-17 00:31:11'),(139,'RFQ1438','9338',NULL,'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful',NULL,'Kam','SM',1,'2023-02-17 01:22:16','2023-02-17 01:22:16'),(140,'RFQ1332','4884','Since component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.\nSince component logic is written in JavaScript instead of templates, you can easily pass rich data through y',NULL,NULL,'C','Kam',1,'2023-02-17 01:25:06','2023-02-17 01:25:06'),(141,'RFQ1332','4884',NULL,'Cam to sales',NULL,'Kam','Sales',1,'2023-02-17 01:47:13','2023-02-17 01:47:13'),(142,'RFQ1332','8189',NULL,'Cam to sales 2',NULL,'Kam','Sales',1,'2023-02-17 01:47:13','2023-02-17 01:47:13'),(143,'RFQ1332','4884',NULL,NULL,'sales to cam','Sales','Kam',1,'2023-02-17 03:46:50','2023-02-17 03:46:50'),(144,'RFQ1332','8189',NULL,NULL,'sales to cam','Sales','Kam',1,'2023-02-17 03:46:50','2023-02-17 03:46:50'),(145,'RFQ6570','7469',NULL,'Cam to sales planing',NULL,'Kam','Sales',1,'2023-02-17 03:56:27','2023-02-17 03:56:27'),(146,'RFQ6570','7469',NULL,NULL,'sales 2 cam','Sales','Kam',1,'2023-02-17 03:57:12','2023-02-17 03:57:12'),(147,'RFQ6570','7469',NULL,'Cam to sales head',NULL,'Kam','SM',1,'2023-02-17 03:58:27','2023-02-17 03:58:27'),(148,'RFQ6570','7469',NULL,'Cam to customer',NULL,'Kam','C',1,'2023-02-17 04:04:00','2023-02-17 04:04:00'),(149,'RFQ2677','5697','cus to cam',NULL,NULL,'C','Kam',1,'2023-02-17 04:43:36','2023-02-17 04:43:36'),(150,'RFQ2677','5697',NULL,'cam to sales',NULL,'Kam','Sales',1,'2023-02-17 04:44:39','2023-02-17 04:44:39'),(151,'RFQ2677','5697',NULL,NULL,'sales to cam','Sales','Kam',1,'2023-02-17 04:46:31','2023-02-17 04:46:31'),(152,'RFQ5427','1397','cus to cam',NULL,NULL,'C','Kam',1,'2023-02-17 05:15:26','2023-02-17 05:15:26'),(153,'RFQ5427','8737','cus to cam dap',NULL,NULL,'C','Kam',1,'2023-02-17 05:15:26','2023-02-17 05:15:26'),(154,'RFQ5427','1397',NULL,'Cam to sales',NULL,'Kam','Sales',1,'2023-02-17 05:18:16','2023-02-17 05:18:16'),(155,'RFQ5427','8737',NULL,'Cam to sales 2',NULL,'Kam','Sales',1,'2023-02-17 05:18:16','2023-02-17 05:18:16'),(156,'RFQ5427','1397',NULL,NULL,'sales to cam','Sales','Kam',1,'2023-02-17 05:20:15','2023-02-17 05:20:15'),(157,'RFQ5427','8737',NULL,NULL,'sales to cam','Sales','Kam',1,'2023-02-17 05:20:15','2023-02-17 05:20:15'),(158,'RFQ5427','1397',NULL,'Cam to sales head',NULL,'Kam','SM',1,'2023-02-17 05:21:46','2023-02-17 05:21:46'),(159,'RFQ5427','8737',NULL,'Cam to sales head 2',NULL,'Kam','SM',1,'2023-02-17 05:21:46','2023-02-17 05:21:46'),(160,'RFQ5427','1397',NULL,'Cam to Customer',NULL,'Kam','C',1,'2023-02-17 05:25:28','2023-02-17 05:25:28'),(161,'RFQ5427','8737',NULL,'Cam to Customer accepted',NULL,'Kam','C',1,'2023-02-17 05:25:28','2023-02-17 05:25:28');
/*!40000 ALTER TABLE `remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requote_counts`
--

DROP TABLE IF EXISTS `requote_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requote_counts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sche_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counts` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requote_counts`
--

LOCK TABLES `requote_counts` WRITE;
/*!40000 ALTER TABLE `requote_counts` DISABLE KEYS */;
INSERT INTO `requote_counts` VALUES (1,'1259',2,1,'2023-02-14 05:18:23','2023-02-14 05:19:31'),(2,'8368',1,1,'2023-02-16 06:22:56','2023-02-16 06:22:56'),(3,'7469',1,1,'2023-02-17 04:04:00','2023-02-17 04:04:00'),(4,'1397',1,1,'2023-02-17 05:25:28','2023-02-17 05:25:28');
/*!40000 ALTER TABLE `requote_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requotes`
--

DROP TABLE IF EXISTS `requotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requotes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requotes`
--

LOCK TABLES `requotes` WRITE;
/*!40000 ALTER TABLE `requotes` DISABLE KEYS */;
INSERT INTO `requotes` VALUES (1,'1259',0,NULL,NULL),(2,'8368',0,NULL,NULL),(3,'7469',0,NULL,NULL),(4,'1397',0,NULL,NULL);
/*!40000 ALTER TABLE `requotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset_otps`
--

DROP TABLE IF EXISTS `reset_otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reset_otps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset_otps`
--

LOCK TABLES `reset_otps` WRITE;
/*!40000 ALTER TABLE `reset_otps` DISABLE KEYS */;
INSERT INTO `reset_otps` VALUES (1,'arun.sarkar@beas.co.in','984939',1,'0000-00-00'),(2,'arun.sarkar@beas.co.in','837183',1,'0000-00-00'),(3,'arun.sarkar@beas.co.in','858987',1,'0000-00-00'),(4,'arun.sarkar@beas.co.in','831763',2,'0000-00-00'),(5,'arun.sarkar@beas.co.in','793356',2,'0000-00-00'),(6,'arun.sarkar@beas.co.in','914194',2,'0000-00-00'),(7,'arun.sarkar@beas.co.in','950581',2,'0000-00-00'),(8,'sourav.mondal@beas.co.in','188302',2,'0000-00-00'),(9,'sourav.mondal@beas.co.in','762702',2,'0000-00-00'),(10,'arun.sarkar@beas.co.in','478688',1,'0000-00-00'),(11,'srvmondal88@gmail.com','436476',1,'0000-00-00'),(12,'arun.sarkar@beas.co.in','531047',2,'0000-00-00'),(13,'amitbeas17@gmail.com','278652',2,'0000-00-00'),(14,'sourav.mondal@beas.co.in','875682',2,'0000-00-00'),(15,'sourav.mondal@beas.co.in','763833',2,'0000-00-00'),(16,'srvmondal@gmail.com','417697',2,'0000-00-00'),(17,'sourav.mondal@beas.co.in','687593',2,'0000-00-00'),(18,'sourav.mondal@beas.co.in','498442',2,'0000-00-00'),(19,'sourav.mondal@beas.co.in','993014',2,'0000-00-00');
/*!40000 ALTER TABLE `reset_otps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfq_order_status_cust`
--

DROP TABLE IF EXISTS `rfq_order_status_cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfq_order_status_cust` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfq_submited` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quoted_by_tsml` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `under_negotiation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_quoted_by_tsml` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfq_closed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sc_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_invoiced` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfq_order_status_cust`
--

LOCK TABLES `rfq_order_status_cust` WRITE;
/*!40000 ALTER TABLE `rfq_order_status_cust` DISABLE KEYS */;
INSERT INTO `rfq_order_status_cust` VALUES (2,'RFQ7116','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-14 04:09:05','2022-12-14 05:06:41'),(3,'RFQ5568','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-15 05:29:19','2022-12-15 05:29:19'),(4,'RFQ3774','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-15 06:19:48','2022-12-15 06:19:48'),(5,'RFQ3737','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-15 06:23:49','2022-12-15 06:23:49'),(6,'RFQ6769','1','1','1','1','1',NULL,NULL,NULL,NULL,'2022-12-15 06:25:54','2022-12-15 07:39:37'),(7,'RFQ3032','1','1','1','1','1',NULL,NULL,NULL,NULL,'2022-12-16 00:20:02','2022-12-16 06:45:00'),(8,'RFQ8508','1','1','1','1',NULL,NULL,NULL,NULL,NULL,'2022-12-16 01:27:32','2022-12-16 06:30:15'),(9,'RFQ2637','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-16 02:14:59','2022-12-16 02:14:59'),(10,'RFQ9764','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-19 03:41:17','2022-12-19 03:41:17'),(11,'RFQ8034','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-19 03:45:15','2022-12-19 03:45:15'),(12,'RFQ3047','1','1','1','1','1',NULL,NULL,NULL,NULL,'2022-12-19 06:45:51','2022-12-19 07:21:15'),(13,'RFQ5456','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-20 01:41:11','2022-12-20 01:41:11'),(14,'RFQ3828','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-20 01:43:20','2022-12-20 01:43:20'),(15,'RFQ2898','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-20 07:17:42','2022-12-20 07:17:42'),(16,'RFQ1591','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-21 03:57:50','2022-12-21 04:43:08'),(17,'RFQ3549','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-21 04:47:08','2022-12-21 05:01:40'),(18,'RFQ5983','1','1','1','1','1',NULL,NULL,NULL,NULL,'2022-12-21 05:15:27','2022-12-21 05:32:08'),(19,'RFQ7895','1','1',NULL,'1','1',NULL,NULL,NULL,NULL,'2022-12-26 00:12:04','2022-12-26 03:34:40'),(20,'RFQ5641','1','1','1','1','1',NULL,NULL,NULL,NULL,'2022-12-26 05:18:08','2022-12-27 06:15:18'),(21,'AIT9453',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,'2022-12-27 01:40:21','2022-12-27 01:40:21'),(22,'RFQ9752',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,'2022-12-27 01:56:45','2022-12-27 04:07:23'),(23,'RFQ1984','1','1','1','1',NULL,NULL,NULL,NULL,NULL,'2022-12-27 02:37:31','2022-12-27 06:17:28'),(24,'RFQ3043','1','1','1','1','1',NULL,NULL,NULL,NULL,'2022-12-27 05:33:45','2022-12-27 05:45:05'),(25,'RFQ1509','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-27 06:18:35','2022-12-27 06:51:40'),(26,'RFQ3695','1','1','1','1','1','1','1',NULL,NULL,'2022-12-27 06:55:09','2022-12-28 03:48:38'),(27,'RFQ4385','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-28 06:10:32','2022-12-28 06:15:32'),(28,'RFQ3410','1','1','1','1','1','1','1','1',NULL,'2022-12-28 06:41:05','2022-12-30 02:23:01'),(29,'RFQ7117','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-29 05:15:33','2022-12-29 05:15:33'),(30,'RFQ7212','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-29 05:29:25','2022-12-29 05:29:25'),(31,'RFQ8082','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-29 05:52:43','2022-12-29 05:52:43'),(32,'RFQ7859','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-02 01:35:34','2023-01-02 06:39:46'),(33,'RFQ7889','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-03 04:38:47','2023-01-03 04:38:47'),(34,'RFQ6791','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-03 05:13:33','2023-01-03 05:13:33'),(35,'RFQ7773','1','1','1',NULL,'1','1','1','1',NULL,'2023-01-03 05:50:53','2023-01-03 07:34:26'),(36,'RFQ4175','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-03 23:50:44','2023-01-03 23:50:44'),(37,'RFQ7796','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-09 04:25:05','2023-01-09 04:25:05'),(38,'RFQ5147','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-09 04:30:58','2023-01-09 05:14:33'),(39,'RFQ3262','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-09 06:34:00','2023-01-09 06:34:00'),(40,'RFQ5373','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-10 03:38:58','2023-01-10 04:03:40'),(41,'RFQ3755','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-11 07:16:27','2023-01-11 07:29:23'),(42,'RFQ5700','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-11 10:56:14','2023-01-11 11:10:39'),(43,'RFQ9811','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-11 11:20:32','2023-01-11 11:26:51'),(44,'RFQ1829','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-12 01:17:10','2023-01-12 01:17:10'),(45,'RFQ8578','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-12 04:50:14','2023-01-12 06:23:02'),(46,'RFQ9392','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-12 06:34:31','2023-01-12 07:12:26'),(47,'RFQ5512','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-15 00:44:24','2023-01-15 00:44:24'),(48,'RFQ8219','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-15 00:46:49','2023-01-15 01:27:15'),(49,'RFQ7790','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-15 06:47:43','2023-01-15 07:52:34'),(50,'RFQ9903','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-15 08:29:41','2023-01-15 08:47:29'),(51,'RFQ1751','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-16 07:33:18','2023-01-16 07:33:18'),(52,'RFQ1824','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 01:20:51','2023-01-17 02:11:40'),(53,'RFQ1728','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 02:21:56','2023-01-17 02:32:01'),(54,'RFQ3802','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 03:42:11','2023-01-17 03:52:56'),(55,'RFQ1205','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 05:43:51','2023-01-17 05:55:24'),(56,'RFQ1094','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 06:25:26','2023-01-17 06:25:26'),(57,'RFQ7779','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 06:34:18','2023-01-17 06:43:22'),(58,'RFQ8249','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-19 00:57:52','2023-01-19 00:57:52'),(59,'RFQ7884','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-19 01:01:19','2023-01-19 01:01:19'),(60,'RFQ6662','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-19 04:47:54','2023-01-19 04:47:54'),(61,'RFQ6090','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-20 05:47:56','2023-01-20 05:47:56'),(62,'RFQ9113','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-01-20 07:02:30','2023-01-25 05:09:22'),(63,'RFQ3355','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-25 02:20:27','2023-01-25 02:20:27'),(64,'RFQ5381','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-25 03:25:41','2023-01-25 03:44:20'),(65,'RFQ2708','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-25 04:07:57','2023-01-25 04:15:44'),(66,'RFQ5511','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-25 06:38:29','2023-01-25 06:45:10'),(67,'RFQ9966','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-31 01:01:58','2023-01-31 01:01:58'),(68,'RFQ4451','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-31 05:25:13','2023-01-31 05:38:19'),(69,'RFQ4470','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-02-01 00:25:42','2023-02-01 02:29:53'),(70,'RFQ2013','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-01 04:25:03','2023-02-01 05:36:41'),(71,'RFQ4452','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-02-01 06:05:37','2023-02-01 06:25:06'),(72,'RFQ7617','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-01 07:03:00','2023-02-01 07:12:43'),(73,'RFQ3742','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-06 00:12:52','2023-02-06 04:48:42'),(74,'RFQ3988','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-06 04:56:46','2023-02-06 05:33:06'),(75,'RFQ7392','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-06 05:35:28','2023-02-06 05:35:28'),(76,'RFQ6680','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-02-06 05:55:29','2023-02-06 07:10:47'),(77,'RFQ8566','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-06 23:54:16','2023-02-07 05:28:21'),(78,'RFQ4418','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-13 01:44:01','2023-02-13 01:44:01'),(79,'RFQ6514','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-02-14 05:04:59','2023-02-14 06:01:40'),(80,'RFQ6298','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 00:59:11','2023-02-16 00:59:11'),(81,'RFQ1438','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 01:18:02','2023-02-16 01:18:02'),(82,'RFQ9484','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 01:44:47','2023-02-16 01:44:47'),(83,'RFQ4477','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 05:47:27','2023-02-16 05:47:27'),(84,'RFQ8781','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-02-16 06:05:40','2023-02-16 06:24:41'),(85,'RFQ6570','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-17 00:31:11','2023-02-17 04:04:00'),(86,'RFQ1332','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-17 01:25:06','2023-02-17 01:25:06'),(87,'RFQ2677','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-17 04:43:36','2023-02-17 04:43:36'),(88,'RFQ5427','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,'2023-02-17 05:15:26','2023-02-17 05:57:56');
/*!40000 ALTER TABLE `rfq_order_status_cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfq_order_status_kam`
--

DROP TABLE IF EXISTS `rfq_order_status_kam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfq_order_status_kam` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfq_submited` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_pending_from_sales` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reverted_by_sales_plaing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_approved_awaited` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_accepted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_rejected` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `under_negotiation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_closed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sc_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_invoiced` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfq_order_status_kam`
--

LOCK TABLES `rfq_order_status_kam` WRITE;
/*!40000 ALTER TABLE `rfq_order_status_kam` DISABLE KEYS */;
INSERT INTO `rfq_order_status_kam` VALUES (3,'RFQ7116','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,'2022-12-14 05:46:21','2022-12-14 05:47:11'),(4,'RFQ5568','1','1','','',NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,'2022-12-14 05:46:21','2022-12-15 06:07:37'),(5,'RFQ6769','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2022-12-15 06:25:55','2022-12-15 07:39:37'),(6,'RFQ3032','1','1','1','1','1','1',NULL,'1','1',NULL,NULL,NULL,NULL,'2022-12-16 00:20:03','2022-12-16 00:51:09'),(7,'RFQ8508','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2022-12-16 01:27:32','2022-12-16 01:38:29'),(8,'RFQ2637','1','1','1','1',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-16 02:15:00','2022-12-28 06:04:41'),(9,'RFQ8720',NULL,'1','1','1',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-16 07:44:48','2022-12-28 06:01:22'),(10,'RFQ9764','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-19 03:41:17','2022-12-19 03:41:17'),(11,'RFQ8034','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-19 03:45:15','2022-12-19 03:45:57'),(12,'RFQ3047','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2022-12-19 06:45:51','2022-12-19 07:21:15'),(13,'RFQ5456','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-20 01:41:11','2022-12-20 01:41:11'),(14,'RFQ3828','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-20 01:43:20','2022-12-20 01:45:41'),(15,'RFQ2898','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-20 07:17:42','2022-12-20 07:18:54'),(16,'RFQ1591','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2022-12-21 03:57:51','2022-12-21 04:43:08'),(17,'RFQ3549','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2022-12-21 04:47:09','2022-12-21 05:01:40'),(18,'RFQ5983','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2022-12-21 05:15:27','2022-12-21 05:26:42'),(19,'RFQ7895','1','1','1','1','1',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2022-12-26 00:12:04','2022-12-26 03:26:52'),(20,'RFQ5641','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2022-12-26 05:18:08','2022-12-26 05:23:37'),(21,'AIT9453',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,'2022-12-27 01:40:20','2022-12-27 01:40:20'),(22,'RFQ9752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,'2022-12-27 01:56:45','2022-12-27 04:07:23'),(23,'RFQ1984','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2022-12-27 02:37:31','2022-12-27 02:41:11'),(24,'RFQ3043','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2022-12-27 05:33:45','2022-12-27 05:45:05'),(25,'RFQ1509','1','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-27 06:18:35','2022-12-27 06:51:39'),(26,'RFQ3695','1','1','1','1','1',NULL,NULL,'1','1','1','1',NULL,NULL,'2022-12-27 06:55:09','2022-12-28 03:48:37'),(27,'RFQ4385','1','1','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-28 06:10:32','2022-12-28 06:15:32'),(28,'RFQ3410','1','1','1','1','1','1',NULL,'1','1','1','1','1',NULL,'2022-12-28 06:41:05','2022-12-30 02:23:01'),(29,'RFQ7117','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-29 05:15:33','2022-12-30 06:04:34'),(30,'RFQ7212','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-29 05:29:25','2022-12-30 06:07:43'),(31,'RFQ8082','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-29 05:52:43','2022-12-29 05:52:43'),(32,'RFQ7859','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-02 01:35:34','2023-01-02 06:39:46'),(33,'RFQ7889','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-03 04:38:46','2023-01-03 04:38:46'),(34,'RFQ6791','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-03 05:13:33','2023-01-03 05:13:33'),(35,'RFQ7773','1','1','1','1','1',NULL,NULL,'1','1','1','1','1',NULL,'2023-01-03 05:50:53','2023-01-03 07:34:26'),(36,'RFQ4175','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-03 23:50:44','2023-01-03 23:53:26'),(37,'RFQ7796','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-09 04:25:05','2023-01-09 04:25:05'),(38,'RFQ5147','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-09 04:30:59','2023-01-09 05:14:32'),(39,'RFQ3262','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-09 06:34:00','2023-01-09 06:34:00'),(40,'RFQ5373','1','1','1','1','1','1',NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-10 03:38:58','2023-01-10 04:03:40'),(41,'RFQ3755','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-11 07:16:27','2023-01-11 07:29:22'),(42,'RFQ5700','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-11 10:56:14','2023-01-11 11:10:39'),(43,'RFQ9811','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-11 11:20:32','2023-01-11 11:26:51'),(44,'RFQ1829','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-12 01:17:10','2023-01-12 01:27:52'),(45,'RFQ8578','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-12 04:50:14','2023-01-12 06:23:02'),(46,'RFQ9392','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-12 06:34:31','2023-01-12 07:12:26'),(47,'RFQ5512','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-15 00:44:24','2023-01-15 04:37:15'),(48,'RFQ8219','1','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-15 00:46:49','2023-01-15 01:27:16'),(49,'RFQ7790','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-15 06:47:44','2023-01-15 07:52:34'),(50,'RFQ9903','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-15 08:29:42','2023-01-15 08:47:29'),(51,'RFQ1751','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-16 07:33:18','2023-01-17 06:21:16'),(52,'RFQ1824','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-17 01:20:51','2023-01-17 02:11:40'),(53,'RFQ1728','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-17 02:21:56','2023-01-17 02:32:01'),(54,'RFQ3802','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-17 03:42:11','2023-01-17 03:52:56'),(55,'RFQ1205','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-17 05:43:51','2023-01-17 05:55:24'),(56,'RFQ1094','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 06:25:26','2023-01-17 06:25:26'),(57,'RFQ7779','1','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-17 06:34:18','2023-01-17 06:43:22'),(58,'RFQ8249','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-19 00:57:53','2023-01-19 00:57:53'),(59,'RFQ7884','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-19 01:01:19','2023-01-19 04:41:06'),(60,'RFQ6662','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-19 04:47:54','2023-01-19 04:50:11'),(61,'RFQ6090','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-20 05:47:56','2023-01-20 05:47:56'),(62,'RFQ9113','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-01-20 07:02:30','2023-01-25 05:09:22'),(63,'RFQ3355','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-25 02:20:27','2023-01-25 02:20:27'),(64,'RFQ5381','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-25 03:25:41','2023-01-25 03:44:20'),(65,'RFQ2708','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-25 04:07:57','2023-01-25 04:15:44'),(66,'RFQ5511','1','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-25 06:38:29','2023-01-25 06:45:11'),(67,'RFQ9966','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-31 01:01:57','2023-01-31 01:21:56'),(68,'RFQ4451','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-01-31 05:25:13','2023-01-31 05:38:19'),(69,'RFQ4470','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-02-01 00:25:42','2023-02-01 02:29:53'),(70,'RFQ2013','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-02-01 04:25:03','2023-02-01 05:36:41'),(71,'RFQ4452','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-02-01 06:05:37','2023-02-01 06:25:06'),(72,'RFQ7617','1','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-01 07:02:59','2023-02-01 07:12:43'),(73,'RFQ3742','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-02-06 00:12:53','2023-02-06 04:48:42'),(74,'RFQ3988','1','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-06 04:56:47','2023-02-06 05:33:06'),(75,'RFQ7392','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-06 05:35:28','2023-02-06 05:35:28'),(76,'RFQ6680','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-02-06 05:55:30','2023-02-06 07:10:46'),(77,'RFQ8566','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-02-06 23:54:16','2023-02-07 05:28:21'),(78,'RFQ4418','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-13 01:44:01','2023-02-13 01:44:01'),(79,'RFQ6514','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-02-14 05:04:59','2023-02-14 06:01:40'),(80,'RFQ6298','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 00:59:11','2023-02-16 00:59:11'),(81,'RFQ1438','1','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 01:18:02','2023-02-17 01:22:17'),(82,'RFQ9484','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 01:44:47','2023-02-16 01:44:47'),(83,'RFQ4477','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-16 05:47:27','2023-02-16 05:47:27'),(84,'RFQ8781','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-02-16 06:05:40','2023-02-16 06:24:41'),(85,'RFQ6570','1','1','1','1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2023-02-17 00:31:11','2023-02-17 04:04:00'),(86,'RFQ1332','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-17 01:25:06','2023-02-17 03:46:51'),(87,'RFQ2677','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-17 04:43:36','2023-02-17 04:46:32'),(88,'RFQ5427','1','1','1','1','1',NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'2023-02-17 05:15:26','2023-02-17 05:57:56');
/*!40000 ALTER TABLE `rfq_order_status_kam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfq_status_refs`
--

DROP TABLE IF EXISTS `rfq_status_refs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfq_status_refs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfq_status_refs`
--

LOCK TABLES `rfq_status_refs` WRITE;
/*!40000 ALTER TABLE `rfq_status_refs` DISABLE KEYS */;
INSERT INTO `rfq_status_refs` VALUES (1,'0','Under Confirmation',NULL,NULL),(2,'1','Accepted',NULL,NULL),(3,'2','Rejected',NULL,NULL),(4,'4','PO Generated',NULL,NULL),(7,'5','Sales Confirmed',NULL,NULL),(8,'7','Under Process',NULL,NULL),(9,'6','Under Negotiation',NULL,NULL),(10,'8','Price Approval Awaited',NULL,NULL),(11,'9','Rejected By SM',NULL,NULL);
/*!40000 ALTER TABLE `rfq_status_refs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_contracts`
--

DROP TABLE IF EXISTS `sales_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_contracts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sc_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sc_dt` date DEFAULT NULL,
  `contract_ty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_grp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty_cont` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_to_party` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_to_addr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_to_addr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_to_party` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_ref_dt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shp_cond` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_org` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis_chnl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `div` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_ofc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_contracts`
--

LOCK TABLES `sales_contracts` WRITE;
/*!40000 ALTER TABLE `sales_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_notifications`
--

DROP TABLE IF EXISTS `sales_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'R=Rfq|P=PO',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_notifications`
--

LOCK TABLES `sales_notifications` WRITE;
/*!40000 ALTER TABLE `sales_notifications` DISABLE KEYS */;
INSERT INTO `sales_notifications` VALUES (1,'Tentative date and quantity updated','RFQ6514',NULL,'5','R',2,'2023-02-14 05:08:54','2023-02-14 05:08:54'),(2,'Tentative date and quantity updated','RFQ1438',NULL,'5','R',2,'2023-02-16 02:15:20','2023-02-16 02:15:20'),(3,'Tentative date and quantity updated','RFQ8781',NULL,'5','R',2,'2023-02-16 06:07:44','2023-02-16 06:07:44'),(4,'Tentative date and quantity updated','RFQ1332',NULL,'110','R',2,'2023-02-17 01:47:13','2023-02-17 01:47:13'),(5,'Tentative date and quantity updated','RFQ6570',NULL,'110','R',2,'2023-02-17 03:56:28','2023-02-17 03:56:28'),(6,'Tentative date and quantity updated','RFQ2677',NULL,'110','R',2,'2023-02-17 04:44:39','2023-02-17 04:44:39'),(7,'Tentative date and quantity updated','RFQ5427',NULL,'110','R',2,'2023-02-17 05:18:17','2023-02-17 05:19:02');
/*!40000 ALTER TABLE `sales_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_office`
--

DROP TABLE IF EXISTS `sales_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_office` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_office_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_office_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_office`
--

LOCK TABLES `sales_office` WRITE;
/*!40000 ALTER TABLE `sales_office` DISABLE KEYS */;
INSERT INTO `sales_office` VALUES (1,'TGS','TGS Sales Office',NULL,NULL),(2,'PANT','Pantnagar S.Office',NULL,NULL);
/*!40000 ALTER TABLE `sales_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_orders`
--

DROP TABLE IF EXISTS `sales_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transact_id` int(11) NOT NULL,
  `so_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_proc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fin_doc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_org` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dis_chnl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_ofc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_grp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_orders`
--

LOCK TABLES `sales_orders` WRITE;
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
INSERT INTO `sales_orders` VALUES (1,22,'SO999','SC8395','AIT8395','100','TDF4545',0,'3','3',NULL,'51',NULL,NULL,NULL,'2022-12-28 07:16:16','2022-12-28 07:16:16'),(2,24,'SO2222','SC9696','AIT1849','50','TYG363',0,'3','6',NULL,'50',NULL,NULL,NULL,'2023-01-03 07:08:40','2023-01-03 07:08:40');
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_contract_type`
--

DROP TABLE IF EXISTS `sap_contract_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_contract_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contract_type_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_type_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_contract_type`
--

LOCK TABLES `sap_contract_type` WRITE;
/*!40000 ALTER TABLE `sap_contract_type` DISABLE KEYS */;
INSERT INTO `sap_contract_type` VALUES (1,'GCQ','GG Quantity Contract',NULL,NULL),(2,'GK','Master contract',NULL,NULL),(3,'JSDQ','Shp&Deb.Qty Contract',NULL,NULL),(4,'CQ','Qty contract',NULL,NULL),(5,'MV','Rental contract',NULL,NULL),(6,'WK1','Value contract- gen.',NULL,NULL),(7,'WK2','Matl-rel. value cont',NULL,NULL),(8,'ZCQ','Qty contract Wire',NULL,NULL),(9,'ZCQB','Qty contract for Brg',NULL,NULL),(10,'ZCQC','QC based Qty contrac.',NULL,NULL),(11,'ZFQC','Qty Contract TSML',NULL,NULL),(12,'ZFQE','TSML Export Contract',NULL,NULL),(13,'ZIM0','Customer Intend 0',NULL,NULL),(14,'ZIM1','Customer Intend 1',NULL,NULL),(15,'ZLPC','LP Qty contract',NULL,NULL),(16,'ZMC','Tender Declaration',NULL,NULL),(17,'WV','Service and Maint.',NULL,NULL),(18,'ZCNQ','Qty contract-NON QC',NULL,NULL);
/*!40000 ALTER TABLE `sap_contract_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_customer_group`
--

DROP TABLE IF EXISTS `sap_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_customer_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cus_group_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_group_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_customer_group`
--

LOCK TABLES `sap_customer_group` WRITE;
/*!40000 ALTER TABLE `sap_customer_group` DISABLE KEYS */;
INSERT INTO `sap_customer_group` VALUES (1,'AUC','Auction (Raw Mtl)',NULL,NULL),(2,'DOM','Domestic',NULL,NULL),(3,'EXP','Exports',NULL,NULL),(4,'SEC','Sec. Pdt (Raw Mtl)',NULL,NULL),(5,'TRN','Transfer',NULL,NULL),(6,'WUS','Works Use',NULL,NULL);
/*!40000 ALTER TABLE `sap_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_delivery_mode`
--

DROP TABLE IF EXISTS `sap_delivery_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_delivery_mode` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_mode_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_mode_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_delivery_mode`
--

LOCK TABLES `sap_delivery_mode` WRITE;
/*!40000 ALTER TABLE `sap_delivery_mode` DISABLE KEYS */;
INSERT INTO `sap_delivery_mode` VALUES (1,'1','Rail(Wagon)',NULL,NULL),(2,'2','Truck(Lorry)',NULL,NULL),(3,'3','Trailer',NULL,NULL),(4,'4','Container ',NULL,NULL),(5,'5','Gandola',NULL,NULL),(6,'5','Auto Determination ',NULL,NULL);
/*!40000 ALTER TABLE `sap_delivery_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_distribution_channel`
--

DROP TABLE IF EXISTS `sap_distribution_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_distribution_channel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `distr_chan_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distr_chan_terms_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_distribution_channel`
--

LOCK TABLES `sap_distribution_channel` WRITE;
/*!40000 ALTER TABLE `sap_distribution_channel` DISABLE KEYS */;
INSERT INTO `sap_distribution_channel` VALUES (1,'50','Direct Sales','2022-12-11 18:30:00','2022-12-11 18:30:00'),(2,'51','FAMD direct sale','2022-12-11 18:30:00','2022-12-11 18:30:00'),(3,'60','Distributor','2022-12-11 18:30:00','2022-12-11 18:30:00');
/*!40000 ALTER TABLE `sap_distribution_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_division`
--

DROP TABLE IF EXISTS `sap_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_division` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `division_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distri_chanal_id` bigint(10) DEFAULT NULL,
  `division_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_division`
--

LOCK TABLES `sap_division` WRITE;
/*!40000 ALTER TABLE `sap_division` DISABLE KEYS */;
INSERT INTO `sap_division` VALUES (1,'51',50,'Ferro Chrome',NULL,NULL),(2,'52',50,'Chrome',NULL,NULL),(3,'53',50,'Chrome Concentrate',NULL,NULL),(4,'54',50,'Graphite',NULL,NULL),(5,'81',50,'EPA-Ferro Chrome',NULL,NULL),(6,'90',50,'Others',NULL,NULL),(7,'91',50,'Service',NULL,NULL),(8,'99',50,'Scrap',NULL,NULL),(9,'51',51,'Ferro Chrome',NULL,NULL),(10,'51',60,'Ferro Chrome',NULL,NULL),(11,'52',60,'Chrome',NULL,NULL),(12,'53',60,'Chrome Concentrate',NULL,NULL),(13,'54',60,'Graphite',NULL,NULL),(14,'81',60,'EPA-Ferro Chrome',NULL,NULL),(15,'90',60,'Others',NULL,NULL),(16,'91',60,'Service',NULL,NULL),(17,'99',60,'Scrap',NULL,NULL);
/*!40000 ALTER TABLE `sap_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_freight`
--

DROP TABLE IF EXISTS `sap_freight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_freight` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `freight_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freight_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_freight`
--

LOCK TABLES `sap_freight` WRITE;
/*!40000 ALTER TABLE `sap_freight` DISABLE KEYS */;
INSERT INTO `sap_freight` VALUES (1,'B1','BARGE',NULL,NULL),(2,'B','Breakbulk',NULL,NULL),(3,'C','Containers ',NULL,NULL),(4,'A','Freight on Actuals',NULL,NULL),(5,'N','Special Freight',NULL,NULL);
/*!40000 ALTER TABLE `sap_freight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_freight_indication`
--

DROP TABLE IF EXISTS `sap_freight_indication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_freight_indication` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `freight_indication_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freight_indication_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_freight_indication`
--

LOCK TABLES `sap_freight_indication` WRITE;
/*!40000 ALTER TABLE `sap_freight_indication` DISABLE KEYS */;
INSERT INTO `sap_freight_indication` VALUES (1,'X','Exclusive Indicator',NULL,NULL),(2,'P','PRE-PAID',NULL,NULL),(3,'T','TO-PAY',NULL,NULL),(4,'S','Transhipment',NULL,NULL);
/*!40000 ALTER TABLE `sap_freight_indication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_incoterms`
--

DROP TABLE IF EXISTS `sap_incoterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_incoterms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incoterms_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incoterms_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_incoterms`
--

LOCK TABLES `sap_incoterms` WRITE;
/*!40000 ALTER TABLE `sap_incoterms` DISABLE KEYS */;
INSERT INTO `sap_incoterms` VALUES (1,'A02','Stock brocker','2022-12-11 22:15:05','2022-12-11 22:15:05'),(2,'A03','General Insurance','2022-12-11 22:15:05','2022-12-11 22:15:05'),(3,'B01','Advertising Agencies','2022-12-11 22:15:05','2022-12-11 22:15:05'),(4,'B02','Courier Agencies','2022-12-11 22:15:05','2022-12-11 22:15:05'),(5,'B03','Radio Pager Services','2022-12-11 22:15:05','2022-12-11 22:15:05'),(6,'BA1','Free Del at CRM Bara Comlex','2022-12-11 22:15:05','2022-12-11 22:15:05'),(7,'BA2','Del at CRM BARA Complex','2022-12-11 22:15:05','2022-12-11 22:15:05'),(8,'BB1','BRG-Ex-works Bangalore','2022-12-11 22:15:05','2022-12-11 22:15:05'),(9,'BCF','BRG-C.I.F.CALCUTTA.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(10,'BCG','BRG-Ex Courier Godown','2022-12-11 22:15:05','2022-12-11 22:15:05'),(11,'BCI','BRG-Ex Chennai (India)','2022-12-11 22:15:05','2022-12-11 22:15:05'),(12,'BEA','BRG-Ex-Your Worke/Ex-Ahmedabad','2022-12-11 22:15:05','2022-12-11 22:15:05'),(13,'BEN','BRG-Ex-New Delhi/Ex-Delhi.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(14,'BEP','BRG-Ex-Works Packed.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(15,'BEW','BRG-Ex-Works Unpacked.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(16,'BFB','BRG-FOB.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(17,'BFC','BRG-F.C.A.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(18,'BFK','BRG-F.O.R.KHARAGPUR','2022-12-11 22:15:05','2022-12-11 22:15:05'),(19,'BG1','BRG-Ex-works Gandhinagar.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(20,'BIC','BRG-EX Kolkata  (INDIA)','2022-12-11 22:15:05','2022-12-11 22:15:05'),(21,'BIH','BRG-Ex Haldia (india)','2022-12-11 22:15:05','2022-12-11 22:15:05'),(22,'BIM','BRG-Ex Mumbai (India)','2022-12-11 22:15:05','2022-12-11 22:15:05'),(23,'BIP','BRG-Ex Paradip','2022-12-11 22:15:05','2022-12-11 22:15:05'),(24,'BJ1','BRG-Ex-Jamshedpur.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(25,'BNA','BRG-None','2022-12-11 22:15:05','2022-12-11 22:15:05'),(26,'BOW','BRG-Ex Our Works','2022-12-11 22:15:05','2022-12-11 22:15:05'),(27,'BTG','BRG-Ex Transportation Godown','2022-12-11 22:15:05','2022-12-11 22:15:05'),(28,'BXP','BRG-Ex-Works Pune basis.','2022-12-11 22:15:05','2022-12-11 22:15:05'),(29,'BYP','BRG-Ex Your Port','2022-12-11 22:15:05','2022-12-11 22:15:05'),(30,'BYW','BRG-Ex Your Works','2022-12-11 22:15:05','2022-12-11 22:15:05'),(31,'C01','Custom House Agents','2022-12-11 22:15:05','2022-12-11 22:15:05'),(32,'C02','steamer Agents','2022-12-11 22:15:05','2022-12-11 22:15:05'),(33,'CFR','Door Delivery','2022-12-11 22:15:05','2022-12-11 22:15:05'),(34,'CIC','Cost, Insurance, Freight & Com','2022-12-11 22:15:05','2022-12-11 22:15:05'),(35,'CIF','Costs, insurance & freight','2022-12-11 22:15:05','2022-12-11 22:15:05'),(36,'CIP','CARRIAGE AND INSURANCE PAID TO','2022-12-11 22:15:05','2022-12-11 22:15:05'),(37,'CPT','CARRIAGE PAID TO','2022-12-11 22:15:05','2022-12-11 22:15:05'),(38,'D01','Manpower recruitment agency','2022-12-11 22:15:05','2022-12-11 22:15:05'),(39,'D02','Mandap Keepers','2022-12-11 22:15:05','2022-12-11 22:15:05'),(40,'D03','Air Travel Agents','2022-12-11 22:15:05','2022-12-11 22:15:05'),(41,'DAF','DELIVERED AT FRONTIER','2022-12-11 22:15:05','2022-12-11 22:15:05'),(42,'DAP','Delivered At Place','2022-12-11 22:15:05','2022-12-11 22:15:05'),(43,'DDF','DOOR DELIV FREIGHT TO PAY BASI','2022-12-11 22:15:05','2022-12-11 22:15:05'),(44,'DDP','DELIVERED DUTY PAID','2022-12-11 22:15:05','2022-12-11 22:15:05'),(45,'DDU','DELIVERED DUTY UNPAID','2022-12-11 22:15:05','2022-12-11 22:15:05'),(46,'DEQ','DELIVERED EX QUAY(DUTY PAID)','2022-12-11 22:15:05','2022-12-11 22:15:05'),(47,'DES','DELIVERED EX SHIP','2022-12-11 22:15:05','2022-12-11 22:15:05'),(48,'E01','Consulting Engineers','2022-12-11 22:15:05','2022-12-11 22:15:05'),(49,'EJH','Ex works jamadoba','2022-12-11 22:15:05','2022-12-11 22:15:05'),(50,'EJO','Ex works Joda','2022-12-11 22:15:05','2022-12-11 22:15:05'),(51,'EKH','Ex works Khondbond','2022-12-11 22:15:05','2022-12-11 22:15:05'),(52,'ENO','Ex works noamundi','2022-12-11 22:15:05','2022-12-11 22:15:05'),(53,'EOG','EX- OUR TRANSPORT GODOWN(MUMBA','2022-12-11 22:15:05','2022-12-11 22:15:05'),(54,'ESJ','Ex works Sijua','2022-12-11 22:15:05','2022-12-11 22:15:05'),(55,'ET1','Entry Tax payable @ 4%','2022-12-11 22:15:05','2022-12-11 22:15:05'),(56,'ET2','Entry Tax payable @ 5%','2022-12-11 22:15:05','2022-12-11 22:15:05'),(57,'ET3','Entry Tax payable by vendor','2022-12-11 22:15:05','2022-12-11 22:15:05'),(58,'ET4','EntryTax notpayble,Jharknd Mnf','2022-12-11 22:15:05','2022-12-11 22:15:05'),(59,'ET5','Entry Tax NOT APPLICABLE','2022-12-11 22:15:05','2022-12-11 22:15:05'),(60,'ETG','EX - TRANSPORTER GODOWN (TARAP','2022-12-11 22:15:05','2022-12-11 22:15:05'),(61,'EWA','EX - WORKS  BY AIR','2022-12-11 22:15:05','2022-12-11 22:15:05'),(62,'EWB','Ex works chainpur','2022-12-11 22:15:05','2022-12-11 22:15:05'),(63,'EWS','EX - WORKS BY SEA','2022-12-11 22:15:05','2022-12-11 22:15:05'),(64,'EXG','Ex your godown','2022-12-11 22:15:05','2022-12-11 22:15:05'),(65,'EXJ','Ex Works door dely to Tisco','2022-12-11 22:15:05','2022-12-11 22:15:05'),(66,'EXL','Ex  Works 3PL','2022-12-11 22:15:05','2022-12-11 22:15:05'),(67,'EXS','Ex Styd/CA','2022-12-11 22:15:05','2022-12-11 22:15:05'),(68,'EXT','Ex Transporters Godown, JSR','2022-12-11 22:15:05','2022-12-11 22:15:05'),(69,'EXW','Ex Works','2022-12-11 22:15:05','2022-12-11 22:15:05'),(70,'EXY','Ex your Works to book to JSR','2022-12-11 22:15:05','2022-12-11 22:15:05'),(71,'EYW','EX- YOUR WORKS','2022-12-11 22:15:05','2022-12-11 22:15:05'),(72,'F01','Architects','2022-12-11 22:15:05','2022-12-11 22:15:05'),(73,'F02','Interior Decorators','2022-12-11 22:15:05','2022-12-11 22:15:05'),(74,'F03','Mangement consultants','2022-12-11 22:15:05','2022-12-11 22:15:05'),(75,'F04','Pracitising Chartered Accounta','2022-12-11 22:15:05','2022-12-11 22:15:05'),(76,'F05','Practising Company Secretaries','2022-12-11 22:15:05','2022-12-11 22:15:05'),(77,'F06','Pracitising Cost Accountants','2022-12-11 22:15:05','2022-12-11 22:15:05'),(78,'F07','Real Estate Agents/Consultants','2022-12-11 22:15:05','2022-12-11 22:15:05'),(79,'F08','Credit Rating Agencies','2022-12-11 22:15:05','2022-12-11 22:15:05'),(80,'F09','Private Security Agencies','2022-12-11 22:15:05','2022-12-11 22:15:05'),(81,'F10','Market Research Agencies','2022-12-11 22:15:05','2022-12-11 22:15:05'),(82,'F11','Underwriter Agencies','2022-12-11 22:15:05','2022-12-11 22:15:05'),(83,'FAS','FREE ALONGSIDE SHIP','2022-12-11 22:15:05','2022-12-11 22:15:05'),(84,'FCA','Free carrier aboard','2022-12-11 22:15:05','2022-12-11 22:15:05'),(85,'FDC','FREE DEL TO CRC(W) TARAPUR','2022-12-11 22:15:05','2022-12-11 22:15:05'),(86,'FDG','Free Delivery To Gomardih Mine','2022-12-11 22:15:05','2022-12-11 22:15:05'),(87,'FDI','Free Delivery To ISWP,JSR','2022-12-11 22:15:05','2022-12-11 22:15:05'),(88,'FDJ','Free Delivery To JK Road','2022-12-11 22:15:05','2022-12-11 22:15:05'),(89,'FDR','Free Delivery To Raj Gangpur','2022-12-11 22:15:05','2022-12-11 22:15:05'),(90,'FDS','Free Delivery To Sukinda Mine','2022-12-11 22:15:05','2022-12-11 22:15:05'),(91,'FHM','Free Delivery to HMC Haldia','2022-12-11 22:15:05','2022-12-11 22:15:05'),(92,'FOB','Free on Board','2022-12-11 22:15:05','2022-12-11 22:15:05'),(93,'FOR','Free on road','2022-12-11 22:15:05','2022-12-11 22:15:05'),(94,'FOT','Free on Road bkd to Tatanagar','2022-12-11 22:15:05','2022-12-11 22:15:05'),(95,'FOW','Free on Road,TWSGS(Inspection)','2022-12-11 22:15:05','2022-12-11 22:15:05'),(96,'FRB','Free dely to BARA , Jamshedpur','2022-12-11 22:15:05','2022-12-11 22:15:05'),(97,'FRD','Free dely to SMD, Jamshedpur','2022-12-11 22:15:05','2022-12-11 22:15:05'),(98,'FRG','Free deliv  to Goregoan Office','2022-12-11 22:15:05','2022-12-11 22:15:05'),(99,'FRK','Free delv to KPO, Orissa','2022-12-11 22:15:05','2022-12-11 22:15:05'),(100,'FRM','Free dely to Med. Store - TMH','2022-12-11 22:15:05','2022-12-11 22:15:05'),(101,'G01','Tour Operators','2022-12-11 22:15:05','2022-12-11 22:15:05'),(102,'G02','Rent -a -cab Operators','2022-12-11 22:15:05','2022-12-11 22:15:05'),(103,'H01','Scientific & tech.consult.serv','2022-12-11 22:15:05','2022-12-11 22:15:05'),(104,'H02','Photography','2022-12-11 22:15:05','2022-12-11 22:15:05'),(105,'H03','Convention','2022-12-11 22:15:05','2022-12-11 22:15:05'),(106,'H04','Telegraph','2022-12-11 22:15:05','2022-12-11 22:15:05'),(107,'H05','Telex','2022-12-11 22:15:05','2022-12-11 22:15:05'),(108,'H06','Fascimile ( Fax )','2022-12-11 22:15:05','2022-12-11 22:15:05'),(109,'H07','Online inform.access/retrieval','2022-12-11 22:15:05','2022-12-11 22:15:05'),(110,'H08','Video tape production','2022-12-11 22:15:05','2022-12-11 22:15:05'),(111,'H09','Sound recording','2022-12-11 22:15:05','2022-12-11 22:15:05'),(112,'H10','Broadcasting','2022-12-11 22:15:05','2022-12-11 22:15:05'),(113,'H11','Insurance auxiliary activity','2022-12-11 22:15:05','2022-12-11 22:15:05'),(114,'H12','Banking and other financial se','2022-12-11 22:15:05','2022-12-11 22:15:05'),(115,'H13','Port','2022-12-11 22:15:05','2022-12-11 22:15:05'),(116,'H14','Authorised service stations','2022-12-11 22:15:05','2022-12-11 22:15:05'),(117,'H15','Leased Circuits Services','2022-12-11 22:15:05','2022-12-11 22:15:05'),(118,'I01','Auxiliary Service to Life Insu','2022-12-11 22:15:05','2022-12-11 22:15:05'),(119,'I02','Cargo Handling','2022-12-11 22:15:05','2022-12-11 22:15:05'),(120,'I03','Storage and Warehousing servic','2022-12-11 22:15:05','2022-12-11 22:15:05'),(121,'I04','Event Management','2022-12-11 22:15:05','2022-12-11 22:15:05'),(122,'I05','Cable operators','2022-12-11 22:15:05','2022-12-11 22:15:05'),(123,'I06','Beauty Parlours','2022-12-11 22:15:05','2022-12-11 22:15:05'),(124,'I07','Health and Fitness centers','2022-12-11 22:15:05','2022-12-11 22:15:05'),(125,'I08','Fashion designer','2022-12-11 22:15:05','2022-12-11 22:15:05'),(126,'I09','Rail travel agents','2022-12-11 22:15:05','2022-12-11 22:15:05'),(127,'I10','Dry cleaning services','2022-12-11 22:15:05','2022-12-11 22:15:05'),(128,'IJW','ISWP,JSR Works','2022-12-11 22:15:05','2022-12-11 22:15:05'),(129,'J01','Com.voca.inst,coach cen/tuto','2022-12-11 22:15:06','2022-12-11 22:15:06'),(130,'J02','Tech test.&analy(ex health)','2022-12-11 22:15:06','2022-12-11 22:15:06'),(131,'J03','Maintenance and repair service','2022-12-11 22:15:06','2022-12-11 22:15:06'),(132,'J04','Commission and installation se','2022-12-11 22:15:06','2022-12-11 22:15:06'),(133,'J05','Busi.promo.&supt.serv.ex.ITS','2022-12-11 22:15:06','2022-12-11 22:15:06'),(134,'J06','Internet Café','2022-12-11 22:15:06','2022-12-11 22:15:06'),(135,'J07','Franchise Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(136,'JHA','FREE DELIVERY TO JHARIA/SIJUA','2022-12-11 22:15:06','2022-12-11 22:15:06'),(137,'JOD','FREE DELIVERY TO JODA','2022-12-11 22:15:06','2022-12-11 22:15:06'),(138,'K01','Transport of goodsby road','2022-12-11 22:15:06','2022-12-11 22:15:06'),(139,'K02','Outdoor caterer\'s service','2022-12-11 22:15:06','2022-12-11 22:15:06'),(140,'K03','Pandal or Shamina service','2022-12-11 22:15:06','2022-12-11 22:15:06'),(141,'K04','Airport services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(142,'K05','Transport of Goods by Air Serv','2022-12-11 22:15:06','2022-12-11 22:15:06'),(143,'K06','Business Exhibition Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(144,'K07','Construction Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(145,'K08','Intellectual Property Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(146,'K09','Opinion poll Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(147,'K10','TV or Radio Programme Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(148,'K11','Survey& Explo.of Mineral serv.','2022-12-11 22:15:06','2022-12-11 22:15:06'),(149,'K12','Travel agt\'s Svcs(ex rail/air)','2022-12-11 22:15:06','2022-12-11 22:15:06'),(150,'K13','Erection Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(151,'K14','Const.Ser(Comm&Indus.bldg/cvl)','2022-12-11 22:15:06','2022-12-11 22:15:06'),(152,'K15','Forward contract Services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(153,'KPO','Delivery for Kalinganagar Proj','2022-12-11 22:15:06','2022-12-11 22:15:06'),(154,'L01','Transportation of Goods','2022-12-11 22:15:06','2022-12-11 22:15:06'),(155,'M01','Trans.&Goods thro.pipe/conduit','2022-12-11 22:15:06','2022-12-11 22:15:06'),(156,'M02','Sitecl.exc.&dem svcs.(ex agri)','2022-12-11 22:15:06','2022-12-11 22:15:06'),(157,'M03','Dredging service','2022-12-11 22:15:06','2022-12-11 22:15:06'),(158,'M04','Survey&map making ex. by Govt.','2022-12-11 22:15:06','2022-12-11 22:15:06'),(159,'M05','Clng svcs (expt agri, animal)','2022-12-11 22:15:06','2022-12-11 22:15:06'),(160,'M06','Member of club with specf excl','2022-12-11 22:15:06','2022-12-11 22:15:06'),(161,'M07','Packaging services','2022-12-11 22:15:06','2022-12-11 22:15:06'),(162,'M08','Mailing list compilation and m','2022-12-11 22:15:06','2022-12-11 22:15:06'),(163,'M09','Const res cplx > 12 nos.','2022-12-11 22:15:06','2022-12-11 22:15:06'),(164,'NAP','Inco terms - Not applicable','2022-12-11 22:15:06','2022-12-11 22:15:06'),(165,'NOA','FREE DELIVERY TO NOAMUNDI','2022-12-11 22:15:06','2022-12-11 22:15:06'),(166,'RSR','Road-Ship-Road','2022-12-11 22:15:06','2022-12-11 22:15:06'),(167,'RTT','ROAD TRANSPORT TO TARAPUR','2022-12-11 22:15:06','2022-12-11 22:15:06'),(168,'RW','Road-Wagon','2022-12-11 22:15:06','2022-12-11 22:15:06'),(169,'TSS','Free Dely Shared Ser,Tubes,Jsr','2022-12-11 22:15:06','2022-12-11 22:15:06'),(170,'TTC','Free Dely Canteen,Tubes, Jsr','2022-12-11 22:15:06','2022-12-11 22:15:06'),(171,'TTD','Free Dely to Stores,Tubes, Jsr','2022-12-11 22:15:06','2022-12-11 22:15:06'),(172,'TTI','Free Dely ITS Dept,Tubes, Jsr','2022-12-11 22:15:06','2022-12-11 22:15:06'),(173,'TTP','Free Dely PT Mills,Tubes, Jsr','2022-12-11 22:15:06','2022-12-11 22:15:06'),(174,'TTS','Free Dely ST Mills,Tubes, Jsr','2022-12-11 22:15:06','2022-12-11 22:15:06'),(175,'W1','EX- OUR TRANSPORT GODOWN(MUMBA','2022-12-11 22:15:06','2022-12-11 22:15:06'),(176,'W10','BY RAIL TO TPR  ON FREIGHT TO','2022-12-11 22:15:06','2022-12-11 22:15:06'),(177,'W11','EX - TRANSPORTER GODOWN (TARAP','2022-12-11 22:15:06','2022-12-11 22:15:06'),(178,'W12','DOOR DELIVERY FREIGHT TO PAY B','2022-12-11 22:15:06','2022-12-11 22:15:06'),(179,'W13','EX - WORKS  BY AIR','2022-12-11 22:15:06','2022-12-11 22:15:06'),(180,'W14','EX - WORKS BY SEA','2022-12-11 22:15:06','2022-12-11 22:15:06'),(181,'W15','ROAD TRANSPORT TO TARAPUR','2022-12-11 22:15:06','2022-12-11 22:15:06'),(182,'W17','Free Delivery to Dodaballapur','2022-12-11 22:15:06','2022-12-11 22:15:06'),(183,'W18','Ex-transporters godown-Bangalo','2022-12-11 22:15:06','2022-12-11 22:15:06'),(184,'W19','Ex-Transporter\'s godown-DWP','2022-12-11 22:15:06','2022-12-11 22:15:06'),(185,'W2','FREE DEL TO WRM TARAPUR','2022-12-11 22:15:06','2022-12-11 22:15:06'),(186,'W20','Free delivery to PWP','2022-12-11 22:15:06','2022-12-11 22:15:06'),(187,'W21','Free delivery to IWP','2022-12-11 22:15:06','2022-12-11 22:15:06'),(188,'W22','Our Works at Killa Plant Indr','2022-12-11 22:15:06','2022-12-11 22:15:06'),(189,'W23','Our Works at Pithampur Plant','2022-12-11 22:15:06','2022-12-11 22:15:06'),(190,'W24','Free delivery to TWP2','2022-12-11 22:15:06','2022-12-11 22:15:06'),(191,'W25','Our Works at TWP2','2022-12-11 22:15:06','2022-12-11 22:15:06'),(192,'W26','Free delivery to TPD','2022-12-11 22:15:06','2022-12-11 22:15:06'),(193,'W27','Our Works at TPD','2022-12-11 22:15:06','2022-12-11 22:15:06'),(194,'W3','FREE DEL TO TWP TARAPUR','2022-12-11 22:15:06','2022-12-11 22:15:06'),(195,'W4','FREE DEL TO BVI PLANT','2022-12-11 22:15:06','2022-12-11 22:15:06'),(196,'W5','FREE DEL TO CENTRAL STORE TARA','2022-12-11 22:15:06','2022-12-11 22:15:06'),(197,'W6','OUR WORKS AT TARAPUR','2022-12-11 22:15:06','2022-12-11 22:15:06'),(198,'W7','OUR WORKS AT BORIVALI','2022-12-11 22:15:06','2022-12-11 22:15:06'),(199,'W8','COLLECTION THRU OUR TRANSPORTE','2022-12-11 22:15:06','2022-12-11 22:15:06'),(200,'W9','BY RAIL TO MUMBAI ON FREIGHT T','2022-12-11 22:15:06','2022-12-11 22:15:06'),(201,'WBC','FREE DELIVERY TO WBC COLLIERY','2022-12-11 22:15:06','2022-12-11 22:15:06'),(202,'WSR','Wagon-Ship-Road','2022-12-11 22:15:06','2022-12-11 22:15:06'),(203,'A01','Telephone','2022-12-12 03:46:21','2022-12-11 13:00:00');
/*!40000 ALTER TABLE `sap_incoterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_order_type`
--

DROP TABLE IF EXISTS `sap_order_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_order_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_type_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_order_type`
--

LOCK TABLES `sap_order_type` WRITE;
/*!40000 ALTER TABLE `sap_order_type` DISABLE KEYS */;
INSERT INTO `sap_order_type` VALUES (1,'AEBO','Standard order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(2,'BIND','Indir. Sales Rebate','2022-12-13 00:25:08','2022-12-13 00:25:08'),(3,'BM1','Agrmnt Deb.Memo Req.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(4,'BM3','Agrmnt Deb.Memo Req.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(5,'BV','Cash Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(6,'CFG2','CF Credit Memo Req.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(7,'CH','Contract Handling','2022-12-13 00:25:08','2022-12-13 00:25:08'),(8,'CLRP','Requests + Returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(9,'CMDM','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(10,'CMR','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(11,'CMRC','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(12,'CMRP','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(13,'DMRB','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(14,'DMRP','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(15,'DMRR','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(16,'ED','Issue by ext. agent','2022-12-13 00:25:08','2022-12-13 00:25:08'),(17,'EDKO','Correction f.ExtAgnt','2022-12-13 00:25:08','2022-12-13 00:25:08'),(18,'CR','Credit Memo Request','2022-12-13 00:25:08','2022-12-13 00:25:08'),(19,'G2WT','Credit Memo Req. Val','2022-12-13 00:25:08','2022-12-13 00:25:08'),(20,'GA2','Credit Memo Request','2022-12-13 00:25:08','2022-12-13 00:25:08'),(21,'GCTA','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(22,'GOR','GG Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(23,'KA','Consignment Pick-up','2022-12-13 00:25:08','2022-12-13 00:25:08'),(24,'KAZU','ConsignPick-up CompS','2022-12-13 00:25:08','2022-12-13 00:25:08'),(25,'KB','Consignment Fill-up','2022-12-13 00:25:08','2022-12-13 00:25:08'),(26,'KE','Consignment Issue','2022-12-13 00:25:08','2022-12-13 00:25:08'),(27,'FD','Deliv.Free of Charge','2022-12-13 00:25:08','2022-12-13 00:25:08'),(28,'SD','Subs.Dlv.Free of Ch.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(29,'KR','Consignment Returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(30,'KRZU','ConsignReturn CompS','2022-12-13 00:25:08','2022-12-13 00:25:08'),(31,'DR','Debit Memo Request','2022-12-13 00:25:08','2022-12-13 00:25:08'),(32,'L2DM','Expense:DebitMemoReq','2022-12-13 00:25:08','2022-12-13 00:25:08'),(33,'L2DP','Expense:Payment Req.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(34,'L2WT','Debit Memo Req Value','2022-12-13 00:25:08','2022-12-13 00:25:08'),(35,'LA','Ret.Packaging Pickup','2022-12-13 00:25:08','2022-12-13 00:25:08'),(36,'LN','Ret.Packaging Issue','2022-12-13 00:25:08','2022-12-13 00:25:08'),(37,'LV','Deb.memo req.f.ctrct','2022-12-13 00:25:08','2022-12-13 00:25:08'),(38,'MAKO','Dely order correctn','2022-12-13 00:25:08','2022-12-13 00:25:08'),(39,'OBSS','OBSS','2022-12-13 00:25:08','2022-12-13 00:25:08'),(40,'OR1','Standard order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(41,'PLPA','Pendulum List Req.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(42,'PLPR','Pendulum List Ret.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(43,'PLPS','Pendulum List Cancel','2022-12-13 00:25:08','2022-12-13 00:25:08'),(44,'RA','Repair Request','2022-12-13 00:25:08','2022-12-13 00:25:08'),(45,'RA2','ARM In-House Repair','2022-12-13 00:25:08','2022-12-13 00:25:08'),(46,'RAS','Repairs / Service','2022-12-13 00:25:08','2022-12-13 00:25:08'),(47,'RE','Returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(48,'RE2','Advanced Returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(49,'RERG','Return Order - Rings','2022-12-13 00:25:08','2022-12-13 00:25:08'),(50,'RK','Invoice correct. req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(51,'RM','Delvy order returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(52,'RTTC','SPE Return to Cust.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(53,'RTTR','SPE Return Over.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(54,'RX2','ARM Ext. Repair Ord.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(55,'RZ','Returns sched.agrmnt','2022-12-13 00:25:08','2022-12-13 00:25:08'),(56,'SD2','ARM SDF','2022-12-13 00:25:08','2022-12-13 00:25:08'),(57,'SO','Rush order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(58,'OR','Standard order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(59,'TAF','Standard Order (FPl)','2022-12-13 00:25:08','2022-12-13 00:25:08'),(60,'TAM','Delivery order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(61,'TAV','Standard Order (VMI)','2022-12-13 00:25:08','2022-12-13 00:25:08'),(62,'TSA','Telesales','2022-12-13 00:25:08','2022-12-13 00:25:08'),(63,'UPRR','Used Parts Returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(64,'UUPR','New Parts Returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(65,'WA','Rel. to value contr.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(66,'WMPP','WM Prod.Supply','2022-12-13 00:25:08','2022-12-13 00:25:08'),(67,'YBTF','Build to F\'cast Wire','2022-12-13 00:25:08','2022-12-13 00:25:08'),(68,'YBTS','Build to Stock Wire','2022-12-13 00:25:08','2022-12-13 00:25:08'),(69,'YDO1','TGS External Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(70,'YEXP','TGS Export  Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(71,'YSCR','TGS Scrap  sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(72,'ZAG','Standard Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(73,'ZAUC','MJ AUCTION','2022-12-13 00:25:08','2022-12-13 00:25:08'),(74,'ZAUN','MJ AUCTION-NMV MAND','2022-12-13 00:25:08','2022-12-13 00:25:08'),(75,'ZBCH','Brgs. SO - Channel','2022-12-13 00:25:08','2022-12-13 00:25:08'),(76,'ZBFM','Buffer sales order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(77,'ZBFP','Prot Build to F.cast','2022-12-13 00:25:08','2022-12-13 00:25:08'),(78,'ZBOE','Brgs. SO - OEM','2022-12-13 00:25:08','2022-12-13 00:25:08'),(79,'ZBSO','Sale order wt batch','2022-12-13 00:25:08','2022-12-13 00:25:08'),(80,'ZBTC','Clearence Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(81,'ZBTF','Build to Forecast','2022-12-13 00:25:08','2022-12-13 00:25:08'),(82,'ZBTI','Build to Item - CR','2022-12-13 00:25:08','2022-12-13 00:25:08'),(83,'ZBTN','Works use prd ord CR','2022-12-13 00:25:08','2022-12-13 00:25:08'),(84,'ZBTO','Build to Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(85,'ZBTP','Build to Prot.cap.or','2022-12-13 00:25:08','2022-12-13 00:25:08'),(86,'ZBTS','Shipment Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(87,'ZBTT','Prt B to Fcast Trail','2022-12-13 00:25:08','2022-12-13 00:25:08'),(88,'ZCAB','Cut & Bend SOrder','2022-12-13 00:25:08','2022-12-13 00:25:08'),(89,'ZCDO','CR Works Dely Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(90,'ZCDS','CR Work Dely Or.ZSAO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(91,'ZCEO','CR-Exports Wks DO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(92,'ZCFT','Frt Credit w/o Tax','2022-12-13 00:25:08','2022-12-13 00:25:08'),(93,'ZCIN','Cr Memo Req MJ Price','2022-12-13 00:25:08','2022-12-13 00:25:08'),(94,'ZCMP','Compass Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(95,'ZCNR','CONV. ORD. - RINGS','2022-12-13 00:25:08','2022-12-13 00:25:08'),(96,'ZCNV','Conversion order-Wir','2022-12-13 00:25:08','2022-12-13 00:25:08'),(97,'ZCRG','Cr Memo Req of  Ring','2022-12-13 00:25:08','2022-12-13 00:25:08'),(98,'ZCRM','Cr Memo Req MJ Qty','2022-12-13 00:25:08','2022-12-13 00:25:08'),(99,'ZCRS','MJ  Credit Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(100,'ZCSO','Sales order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(101,'ZCSR','Corp. Soc. Resp.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(102,'ZDCT','CoalTailings DelvOrd','2022-12-13 00:25:08','2022-12-13 00:25:08'),(103,'ZDED','Cr Memo Req for EPD','2022-12-13 00:25:08','2022-12-13 00:25:08'),(104,'ZDFT','Frt Debit w/o Tax','2022-12-13 00:25:08','2022-12-13 00:25:08'),(105,'ZDIN','Dr.Memo Req MJ Price','2022-12-13 00:25:08','2022-12-13 00:25:08'),(106,'ZDML','Multi Modal Delv Ord','2022-12-13 00:25:08','2022-12-13 00:25:08'),(107,'ZDO','Delivery order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(108,'ZDR','Differ. Duty Request','2022-12-13 00:25:08','2022-12-13 00:25:08'),(109,'ZDRB','Wks - ED to be chagd','2022-12-13 00:25:08','2022-12-13 00:25:08'),(110,'ZDRE','Hecess DR req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(111,'ZDRF','Freight DebitMemoReq','2022-12-13 00:25:08','2022-12-13 00:25:08'),(112,'ZDRG','Dr. Memo Req  Ring','2022-12-13 00:25:08','2022-12-13 00:25:08'),(113,'ZDRI','Differ. Duty Req INU','2022-12-13 00:25:08','2022-12-13 00:25:08'),(114,'ZDRM','Dr. Memo Req MJ Qty','2022-12-13 00:25:08','2022-12-13 00:25:08'),(115,'ZDRN','Differ. Duty Re-ZAMP','2022-12-13 00:25:08','2022-12-13 00:25:08'),(116,'ZDRO','Price Debit Memo req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(117,'ZDRP','Price Debit Memo req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(118,'ZDRQ','QualtyDebit Memo Req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(119,'ZDRS','SalesTaxDebitMemoReq','2022-12-13 00:25:08','2022-12-13 00:25:08'),(120,'ZDRW','Works - Price DM Req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(121,'ZDSP','DMR with exc TSPDL','2022-12-13 00:25:08','2022-12-13 00:25:08'),(122,'ZDWE','Dt memo re w/o exci','2022-12-13 00:25:08','2022-12-13 00:25:08'),(123,'ZEAG','AGRICO EXP SLS ORDR','2022-12-13 00:25:08','2022-12-13 00:25:08'),(124,'ZEO','Export-D.Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(125,'ZESO','Port - Sales Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(126,'ZEXP','Export order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(127,'ZF2O','Clearance Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(128,'ZFCR','Frt creditMemo-req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(129,'ZFDI','TSML Direct Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(130,'ZFEC','TSML Exp Contrct Sls','2022-12-13 00:25:08','2022-12-13 00:25:08'),(131,'ZFES','TSML Exp Dirct Sls','2022-12-13 00:25:08','2022-12-13 00:25:08'),(132,'ZFQS','TSML Qty Cntrct Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(133,'ZFRE','Free sales document','2022-12-13 00:25:08','2022-12-13 00:25:08'),(134,'ZFRT','Debit Memo-Freight','2022-12-13 00:25:08','2022-12-13 00:25:08'),(135,'ZHMC','HMC Conversion Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(136,'ZHMS','HMC  Sales','2022-12-13 00:25:08','2022-12-13 00:25:08'),(137,'ZHMU','HMC Utility Gas Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(138,'ZINF','Institutional SO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(139,'ZINS','Institutional SO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(140,'ZINT','EPA/styd to styd- CR','2022-12-13 00:25:08','2022-12-13 00:25:08'),(141,'ZLAN','Landed BTO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(142,'ZLDO','Landed del order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(143,'ZLGC','S.T Cr. Memo Req LG','2022-12-13 00:25:08','2022-12-13 00:25:08'),(144,'ZLGD','S.T Dr.Memo Req. LG','2022-12-13 00:25:08','2022-12-13 00:25:08'),(145,'ZMBO','Market Buffer Offer','2022-12-13 00:25:08','2022-12-13 00:25:08'),(146,'ZMCR','S.T Cr. Memo Req MJ','2022-12-13 00:25:08','2022-12-13 00:25:08'),(147,'ZMDR','S.T Dr.Memo Req. MJ','2022-12-13 00:25:08','2022-12-13 00:25:08'),(148,'ZNPP','NPPDC Sales Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(149,'ZNQC','Order Non QC Based','2022-12-13 00:25:08','2022-12-13 00:25:08'),(150,'ZOR','Standard order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(151,'ZPCF','Price Credit TSML','2022-12-13 00:25:08','2022-12-13 00:25:08'),(152,'ZPCR','Price Corr. Credit','2022-12-13 00:25:08','2022-12-13 00:25:08'),(153,'ZPCW','Pr Corr Cred wo/tax','2022-12-13 00:25:08','2022-12-13 00:25:08'),(154,'ZPDO','Delivery order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(155,'ZPSO','Pravesh Sales Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(156,'ZQCB','Order QC Based','2022-12-13 00:25:08','2022-12-13 00:25:08'),(157,'ZQCR','Quality:Credit Memo','2022-12-13 00:25:08','2022-12-13 00:25:08'),(158,'ZQTC','Qty Corr. CreditNote','2022-12-13 00:25:08','2022-12-13 00:25:08'),(159,'ZRE','Returns','2022-12-13 00:25:08','2022-12-13 00:25:08'),(160,'ZRG','Rings Sales','2022-12-13 00:25:08','2022-12-13 00:25:08'),(161,'ZRRE','Reliability Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(162,'ZRRN','Normal  TOC Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(163,'ZRRS','Rapid Response Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(164,'ZSAO','Spl. Approved Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(165,'ZSAS','Service & Solutios','2022-12-13 00:25:08','2022-12-13 00:25:08'),(166,'ZSCP','CRCW /REFRAC','2022-12-13 00:25:08','2022-12-13 00:25:08'),(167,'ZSCR','S.T  creditMemo-req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(168,'ZSCT','CoalTailings Sales','2022-12-13 00:25:08','2022-12-13 00:25:08'),(169,'ZSDO','Shared Serv. DO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(170,'ZSLB','Order - Slab to Coil','2022-12-13 00:25:08','2022-12-13 00:25:08'),(171,'ZSMG','SMG External Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(172,'ZSMJ','DirectSecondarySales','2022-12-13 00:25:08','2022-12-13 00:25:08'),(173,'ZSO','Stockyard Sales','2022-12-13 00:25:08','2022-12-13 00:25:08'),(174,'ZSOC','EPA SO - BTC','2022-12-13 00:25:08','2022-12-13 00:25:08'),(175,'ZSOI','EPA SO - BTI','2022-12-13 00:25:08','2022-12-13 00:25:08'),(176,'ZSOP','Protective Styd Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(177,'ZSOR','Service Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(178,'ZSP','Shared Services Ord','2022-12-13 00:25:08','2022-12-13 00:25:08'),(179,'ZSP1','ETO orders','2022-12-13 00:25:08','2022-12-13 00:25:08'),(180,'ZSP2','MTO\' orders','2022-12-13 00:25:08','2022-12-13 00:25:08'),(181,'ZSRO','Steel Recycling Sale','2022-12-13 00:25:08','2022-12-13 00:25:08'),(182,'ZSRP','Wire Division Scrap','2022-12-13 00:25:08','2022-12-13 00:25:08'),(183,'ZSS','Shared Services Ord','2022-12-13 00:25:08','2022-12-13 00:25:08'),(184,'ZSSC','Shared Spare Ser Ord','2022-12-13 00:25:08','2022-12-13 00:25:08'),(185,'ZSSD','Shared Service DO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(186,'ZSSN','Shared Service Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(187,'ZSSO','Service SO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(188,'ZSSQ','Shared Services Ord','2022-12-13 00:25:08','2022-12-13 00:25:08'),(189,'ZSSS','TOT- creditMemo-req','2022-12-13 00:25:08','2022-12-13 00:25:08'),(190,'ZSTR','Sales doc for STR','2022-12-13 00:25:08','2022-12-13 00:25:08'),(191,'ZTA','sanjay','2022-12-13 00:25:08','2022-12-13 00:25:08'),(192,'ZTCI','TCIL sales Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(193,'ZTDO','TubesMTO-DelivOrder','2022-12-13 00:25:08','2022-12-13 00:25:08'),(194,'ZTDS','Tubes RR-DelivOrder','2022-12-13 00:25:08','2022-12-13 00:25:08'),(195,'ZTEN','MJ TENDER','2022-12-13 00:25:08','2022-12-13 00:25:08'),(196,'ZTIS','event','2022-12-13 00:25:08','2022-12-13 00:25:08'),(197,'ZTLG','Liasion Cell Doc.','2022-12-13 00:25:08','2022-12-13 00:25:08'),(198,'ZTPO','Third Party Sales','2022-12-13 00:25:08','2022-12-13 00:25:08'),(199,'ZTRF','Transfer to Profit C','2022-12-13 00:25:08','2022-12-13 00:25:08'),(200,'ZTSO','TubesMTO-SalesOrder','2022-12-13 00:25:08','2022-12-13 00:25:08'),(201,'ZTSS','Tubes RR-SalesOrder','2022-12-13 00:25:08','2022-12-13 00:25:08'),(202,'ZVCD','ZVCD-Distributor/OE','2022-12-13 00:25:08','2022-12-13 00:25:08'),(203,'ZVCF','Build to Fcast-TOC','2022-12-13 00:25:08','2022-12-13 00:25:08'),(204,'ZVCI','Build to Item - TOC','2022-12-13 00:25:08','2022-12-13 00:25:08'),(205,'ZVCP','Prot Build toItemTOC','2022-12-13 00:25:08','2022-12-13 00:25:08'),(206,'ZVMI','VMI LP Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(207,'ZVMO','ZSO for VMI Pre Paid','2022-12-13 00:25:08','2022-12-13 00:25:08'),(208,'ZVRO','VMI LP Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(209,'ZVRS','Shipment Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(210,'ZWKP','Secondary Sales KPO','2022-12-13 00:25:08','2022-12-13 00:25:08'),(211,'ZWO','Works Despatch Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(212,'ZWTO','Build to Order','2022-12-13 00:25:08','2022-12-13 00:25:08'),(213,'ZXCR','Credit Memo EXPORT','2022-12-13 00:25:08','2022-12-13 00:25:08'),(214,'ZXRE','Returns EXPORT','2022-12-13 00:25:08','2022-12-13 00:25:08'),(215,'AA','Promotion order','2022-12-13 05:55:53','2022-12-12 18:30:00');
/*!40000 ALTER TABLE `sap_order_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_payment_gurantee_proce`
--

DROP TABLE IF EXISTS `sap_payment_gurantee_proce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_payment_gurantee_proce` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pay_gurantee_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_gurantee_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_payment_gurantee_proce`
--

LOCK TABLES `sap_payment_gurantee_proce` WRITE;
/*!40000 ALTER TABLE `sap_payment_gurantee_proce` DISABLE KEYS */;
INSERT INTO `sap_payment_gurantee_proce` VALUES (1,'BG','Bank Guarantee','2022-12-12 18:30:00','2022-12-12 18:30:00'),(2,'L/C','Letter of Credit','2022-12-12 18:30:00','2022-12-12 18:30:00'),(3,'MR','Money Receipt','2022-12-12 18:30:00','2022-12-12 18:30:00'),(4,'PDC','Post Dated Check','2022-12-12 18:30:00','2022-12-12 18:30:00'),(5,'ZNA','Not Applicable','2022-12-12 18:30:00','2022-12-12 18:30:00');
/*!40000 ALTER TABLE `sap_payment_gurantee_proce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_payment_terms`
--

DROP TABLE IF EXISTS `sap_payment_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_payment_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_terms_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_payment_terms`
--

LOCK TABLES `sap_payment_terms` WRITE;
/*!40000 ALTER TABLE `sap_payment_terms` DISABLE KEYS */;
INSERT INTO `sap_payment_terms` VALUES (1,'B6P1','10 days from customer invoice payment','2022-12-11 22:18:21','2022-12-11 22:18:21'),(2,'B6P3','15 days from Customer invoice payment','2022-12-11 22:18:21','2022-12-11 22:18:21'),(3,'B7P2','100% within 30 days of stfy compltn of job & Inv','2022-12-11 22:18:21','2022-12-11 22:18:21'),(4,'B7P3','100% within 60 days of stfy matl rcpt & Invoice by','2022-12-11 22:18:21','2022-12-11 22:18:21'),(5,'B7P4','100% within 60 days of stfy compln of job & invoic','2022-12-11 22:18:21','2022-12-11 22:18:21'),(6,'B7P5','100% within 45 days of stfy compln of job & invoic','2022-12-11 22:18:21','2022-12-11 22:18:21'),(7,'B7P7','90 days from date of Invoice','2022-12-11 22:18:21','2022-12-11 22:18:21'),(8,'B7Q6','100% within 7 days of stfy compln of job & Invoice','2022-12-11 22:18:21','2022-12-11 22:18:21'),(9,'B8P1','85% Advance , 15% balance payment','2022-12-11 22:18:21','2022-12-11 22:18:21'),(10,'B9P2','95% within 30 days of job compln, 5% on certifictn','2022-12-11 22:18:21','2022-12-11 22:18:21'),(11,'B9P3','50% within 30 days of matl rect,50% on dept certfn','2022-12-11 22:18:21','2022-12-11 22:18:21'),(12,'B9P4','95% within 45 days of job compln, 5% on certifictn','2022-12-11 22:18:21','2022-12-11 22:18:21'),(13,'BX30','30 Days from Bill of Exchange','2022-12-11 22:18:21','2022-12-11 22:18:21'),(14,'BX45','45 Days from Bill of Exchange','2022-12-11 22:18:21','2022-12-11 22:18:21'),(15,'BX60','60 Days from Bill of Exchange','2022-12-11 22:18:21','2022-12-11 22:18:21'),(16,'BX75','75 Days from Bill of Exchange','2022-12-11 22:18:21','2022-12-11 22:18:21'),(17,'BX85','85 Days from Bill of Exchange','2022-12-11 22:18:21','2022-12-11 22:18:21'),(18,'BX90','90 Days from Bill of Exchange','2022-12-11 22:18:21','2022-12-11 22:18:21'),(19,'C8Q1','10% Advance , 90% in 30 days','2022-12-11 22:18:21','2022-12-11 22:18:21'),(20,'YX10','10 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(21,'YX15','15 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(22,'Z001','Cash price, no discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(23,'Z007','30 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(24,'Z008','45 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(25,'Z009','60 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(26,'Z010','75 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(27,'Z011','90 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(28,'Z012','70 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(29,'Z013','180 day price with early payment discnt','2022-12-11 22:18:21','2022-12-11 22:18:21'),(30,'Z014','120 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(31,'Z015','150 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(32,'Z016','40 day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(33,'Z021','50  day price with early payment discount','2022-12-11 22:18:21','2022-12-11 22:18:21'),(34,'Z105','105 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(35,'ZX07','07 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(36,'ZX10','100 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(37,'ZX11','110 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(38,'ZX12','120 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(39,'ZX13','135 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(40,'ZX14','140 days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(41,'ZX15','150 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(42,'ZX17','175 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(43,'ZX18','180 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(44,'ZX21','21 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(45,'ZX25','At Sight','2022-12-11 22:18:21','2022-12-11 22:18:21'),(46,'ZX30','30 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(47,'ZX40','40 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(48,'ZX45','45 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(49,'ZX60','60 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(50,'ZX70','70 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(51,'ZX75','75 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(52,'ZX80','80 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(53,'ZX85','85 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(54,'ZX90','90 Days from shipment date','2022-12-11 22:18:21','2022-12-11 22:18:21'),(55,'B1P8','100% within 15 days of sbmn of Chln & Inv to dept','2022-12-12 03:49:10','2022-12-11 13:00:00');
/*!40000 ALTER TABLE `sap_payment_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_sales_group`
--

DROP TABLE IF EXISTS `sap_sales_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_sales_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_group_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_group_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_sales_group`
--

LOCK TABLES `sap_sales_group` WRITE;
/*!40000 ALTER TABLE `sap_sales_group` DISABLE KEYS */;
INSERT INTO `sap_sales_group` VALUES (1,'1','Sales Group 001','2022-12-12 09:33:22','2022-12-11 18:30:00'),(2,'100','North Sales Group','2022-12-12 09:33:28','2022-12-11 18:30:00'),(3,'200','East Sales Group','2022-12-12 09:33:39','2022-12-11 18:30:00'),(4,'300','West Sales Group','2022-12-12 09:33:47','2022-12-11 18:30:00'),(5,'400','South Sales Group','2022-12-12 09:33:57','2022-12-11 18:30:00');
/*!40000 ALTER TABLE `sap_sales_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_sales_office`
--

DROP TABLE IF EXISTS `sap_sales_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_sales_office` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_office_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_office_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_sales_office`
--

LOCK TABLES `sap_sales_office` WRITE;
/*!40000 ALTER TABLE `sap_sales_office` DISABLE KEYS */;
INSERT INTO `sap_sales_office` VALUES (1,'1000','North Sales Office','2022-12-11 18:30:00','2022-12-11 18:30:00'),(2,'2000','East Sales Office','2022-12-11 18:30:00','2022-12-11 18:30:00'),(3,'3000','West Sales Office','2022-12-11 18:30:00','2022-12-11 18:30:00'),(4,'4000','South Sales Office','2022-12-11 18:30:00','2022-12-11 18:30:00');
/*!40000 ALTER TABLE `sap_sales_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sap_sales_organization`
--

DROP TABLE IF EXISTS `sap_sales_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sap_sales_organization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_orgerms_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_orgerms_dec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sap_sales_organization`
--

LOCK TABLES `sap_sales_organization` WRITE;
/*!40000 ALTER TABLE `sap_sales_organization` DISABLE KEYS */;
INSERT INTO `sap_sales_organization` VALUES (1,'5500','TSML Domestic Sales',NULL,NULL);
/*!40000 ALTER TABLE `sap_sales_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_excel_datas`
--

DROP TABLE IF EXISTS `sc_excel_datas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_excel_datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ContractType` varchar(255) DEFAULT NULL,
  `SalesOrganization` varchar(255) DEFAULT NULL,
  `DistributionChannel` varchar(255) DEFAULT NULL,
  `Division` varchar(255) DEFAULT NULL,
  `ContractValidFrom` varchar(255) DEFAULT NULL,
  `ContractValidTo` varchar(255) DEFAULT NULL,
  `Salesoffice` varchar(255) DEFAULT NULL,
  `Salesgroup` varchar(255) DEFAULT NULL,
  `Incoterms` varchar(255) DEFAULT NULL,
  `Paymentterms` varchar(255) DEFAULT NULL,
  `QtyContractTSML` varchar(255) DEFAULT NULL,
  `Sold_To_Party` varchar(255) DEFAULT NULL,
  `Ship_To_Party` varchar(255) DEFAULT NULL,
  `Cust_Referance` varchar(255) DEFAULT NULL,
  `NetValue` varchar(255) DEFAULT NULL,
  `Cust_Ref_Date` varchar(255) DEFAULT NULL,
  `Shp_Cond` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `Material` varchar(255) DEFAULT NULL,
  `Quantity` varchar(255) DEFAULT NULL,
  `CustomarMaterialNumber` varchar(255) DEFAULT NULL,
  `OrderQuantity` varchar(255) DEFAULT NULL,
  `Plant` varchar(255) DEFAULT NULL,
  `ItemNumber` varchar(255) DEFAULT NULL,
  `CnTy` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `Freight` varchar(255) DEFAULT NULL,
  `CustomerGroup4` varchar(255) DEFAULT NULL,
  `FreightIndicator` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `sc_no` varchar(255) DEFAULT NULL,
  `ordr_no` varchar(255) DEFAULT NULL,
  `finance_no` varchar(255) DEFAULT NULL,
  `payment_proc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_excel_datas`
--

LOCK TABLES `sc_excel_datas` WRITE;
/*!40000 ALTER TABLE `sc_excel_datas` DISABLE KEYS */;
INSERT INTO `sc_excel_datas` VALUES (1,'GK','5500','50','51','20230212','20230219','2000','100','B02','B6P1','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','1','10','120000166','3','120000166','3','6103','10','ZPR0','300000','B','DOM','S','2023-02-02','SC56983','SO65315','FY256566','PY235684'),(2,'GK','5500','50','51','20230212','20230219','2000','100','B02','B6P1','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','1','20','120000166','5','120000166','5','6103','20','ZPRX','500000','B','DOM','S','2023-02-02','SC22332','SO33663',NULL,NULL),(3,'GCQ','5500','51','51','20230219','20230226','2000','100','BCF','BX75','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','2','10','120000166','3','120000166','3','6103','10','ZPR0','300000','C','EXP','X','2023-02-02','SC68653','SO88996','FY-46823','PY-36865'),(4,'GCQ','5500','51','51','20230219','20230226','2000','100','BCF','BX75','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','2','20','120000166','5','120000166','5','6103','20','ZPRX','500000','C','EXP','X','2023-02-02',NULL,NULL,NULL,NULL),(5,'GK','5500','50','51','20230212','20230218','2000','100','BFB','B6P3','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','2','10','120000166','3','120000166','3','6103','10','ZPRX','300000','B1','DOM','P','2023-02-02','SC77889','SO96662','FY-689433','PY-545426'),(6,'GK','5500','50','51','20230212','20230218','2000','100','BFB','B6P3','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','2','20','120000166','5','120000166','5','6103','20','ZPR0','500000','B1','DOM','P','2023-02-02',NULL,NULL,NULL,NULL),(7,'GK','5500','50','51','20230212','20230218','2000','100','BFB','B6P3','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','2','10','120000166','3','120000166','3','6103','10','ZPRX','300000','B1','DOM','P','2023-02-02',NULL,NULL,NULL,NULL),(8,'GK','5500','50','51','20230212','20230218','2000','100','BFB','B6P3','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','2','20','120000166','5','120000166','5','6103','20','ZPR0','500000','B1','DOM','P','2023-02-02',NULL,NULL,NULL,NULL),(9,'GK','5500','50','52','20230212','20230225','2000','100','B03','B7P2','100','0050001234','0050001234','ORDREF698','102500','2023-02-01','2','10','120000166','3','120000166','3','6103','10','ZPR0','300000','B','DOM','P','2023-02-02',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sc_excel_datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_permissibles`
--

DROP TABLE IF EXISTS `sc_permissibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_permissibles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mat_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perm_percent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chartcs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_permissibles`
--

LOCK TABLES `sc_permissibles` WRITE;
/*!40000 ALTER TABLE `sc_permissibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_permissibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_price_details`
--

DROP TABLE IF EXISTS `sc_price_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_price_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mat_id` int(11) NOT NULL,
  `mat_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_price_details`
--

LOCK TABLES `sc_price_details` WRITE;
/*!40000 ALTER TABLE `sc_price_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_price_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_transactions`
--

DROP TABLE IF EXISTS `sc_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mat_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_transactions`
--

LOCK TABLES `sc_transactions` WRITE;
/*!40000 ALTER TABLE `sc_transactions` DISABLE KEYS */;
INSERT INTO `sc_transactions` VALUES (19,'BPT01','100000','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(20,'QP01','1000','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(21,'CPA01','1000','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(22,'DC01','6000','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(23,'IR01','9','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(24,'CC01','0.00','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(25,'MC01','6000','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(26,'FP01','112000','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(27,'PDB01','1.92','120000111','2','3768','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(28,'BPT01','100000','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(29,'QP01','1000','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(30,'CPA01','1000','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(31,'DC01','6000','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(32,'IR01','9','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(34,'CC01','0.00','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(35,'MC01','6000','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(36,'FP01','112000','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(37,'PDB01','1.92','120000116','2','3665','RFQ9752','2022-12-12 03:35:58','2022-12-12 03:35:58'),(38,'BPT01','100000','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(39,'QP01','0','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(40,'CPA01','1000','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(41,'DC01','6000','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(42,'IR01','9','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(43,'CC01','821.07','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(44,'MC01','6000','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(45,'FP01','106597.75','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(46,'PDB01','0.96','120000074','2','7566','RFQ1080','2022-12-14 04:53:50','2022-12-14 04:53:50'),(47,'BPT01','100000','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(48,'QP01','0','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(49,'CPA01','1000','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(50,'DC01','80000','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(51,'IR01','9','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(52,'CC01','0.00','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(53,'MC01','85000','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(54,'FP01','264000','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(55,'PDB01','128.19','120000055','2','4371','RFQ3703','2022-12-14 06:18:18','2022-12-14 06:18:18'),(56,'BPT01','100000','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(57,'QP01','0','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(58,'CPA01','1000','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(59,'DC01','10000','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(60,'IR01','9','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(61,'CC01','0.00','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(62,'MC01','15000','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(63,'FP01','124000','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(64,'PDB01','9.68','120000063','2','1332','RFQ7552','2022-12-14 06:45:11','2022-12-14 06:45:11'),(74,'BPT01','100000','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(75,'QP01','0','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(76,'CPA01','1000','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(77,'DC01','6000','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(78,'IR01','9','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(79,'CC01','0.00','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(80,'MC01','15000','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(81,'FP01','120000','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(82,'PDB01','10.58','120000110','1','5394','RFQ7116','2022-12-14 23:59:23','2022-12-14 23:59:23'),(83,'BPT01','100000','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(84,'QP01','0','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(85,'CPA01','1000','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(86,'DC01','8000','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(87,'IR01','9','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(88,'CC01','0.00','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(89,'MC01','15000','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(90,'FP01','122000','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(91,'PDB01','15.38','120000076','2','1318','RFQ6769','2022-12-15 06:43:30','2022-12-15 06:43:30'),(92,'BPT01','100000','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(93,'QP01','5000','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(94,'CPA01','1000','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(95,'DC01','8000','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(96,'IR01','9','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(97,'CC01','0.00','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(98,'MC01','15000','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(99,'FP01','127000','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(100,'PDB01','13.36','120000063','2','8154','RFQ3032','2022-12-16 00:26:24','2022-12-16 00:26:24'),(101,'BPT01','100000','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(102,'QP01','5000','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(103,'CPA01','1000','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(104,'DC01','65000','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(105,'IR01','9','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(106,'CC01','0.00','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(107,'MC01','5000','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(108,'FP01','174000','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(109,'PDB01','2.42','120000063','6','3131','RFQ8508','2022-12-16 01:32:03','2022-12-16 01:32:03'),(110,'BPT01','100000','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(111,'QP01','5000','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(112,'CPA01','1000','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(113,'DC01','8000','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(114,'IR01','9','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(115,'CC01','0.00','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(116,'MC01','5000','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(117,'FP01','117000','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(118,'PDB01','3.23','120000062','2','6295','RFQ2637','2022-12-16 05:46:54','2022-12-16 05:46:54'),(119,'BPT01','100000','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(120,'QP01','0','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(121,'CPA01','1000','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(122,'DC01','3500','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(123,'IR01','9','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(124,'CC01','0.00','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(125,'MC01','15000','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(126,'FP01','117500','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(127,'PDB01','-12.77','120000054','2','6686','RFQ8720','2022-12-16 07:48:29','2022-12-16 07:48:29'),(128,'BPT01','100000','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(129,'QP01','0','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(130,'CPA01','500','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(131,'DC01','5000','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(132,'IR01','9','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(133,'CC01','0.00','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(134,'MC01','6000','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(135,'FP01','110500','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(136,'PDB01','6.73','120000113','2','5807','RFQ3047','2022-12-19 07:06:17','2022-12-19 07:06:17'),(137,'BPT01','100000','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(138,'QP01','0','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(139,'DC01','500','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(140,'IR01','3500','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(141,'CC01','9','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(142,'MC01','0.00','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(143,'PPA01','1500','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(144,'FP01','105500','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(145,'PDB01','0.48','120000076','2','7849','RFQ3549','2022-12-21 04:49:21','2022-12-21 04:49:21'),(146,'BPT01','100000','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(147,'QP01','4500','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(148,'DC01','1000','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(149,'IR01','4000','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(150,'CC01','9','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(151,'MC01','0.00','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(152,'PPA01','1500','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(153,'FP01','111000','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(154,'PDB01','1.37','120000064','2','9559','RFQ5983','2022-12-21 05:20:09','2022-12-21 05:20:09'),(155,'BPT01','100000','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(156,'QP01','0','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(157,'DC01','1000','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(158,'IR01',NULL,'120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(159,'CC01','9','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(160,'MC01','0.00','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(161,'PPA01','1500','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(162,'FP01','102500','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(163,'PDB01','0.99','120000075','2','8833','RFQ7895','2022-12-26 01:44:53','2022-12-26 01:44:53'),(164,'BPT01','100000','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(165,'QP01','5000','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(166,'DC01','500','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(167,'IR01','4000','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(168,'CC01','9','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(169,'MC01','0.00','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(170,'PPA01','1500','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(171,'FP01','111000','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(172,'PDB01','1.37','120000064','3','6593','RFQ1834','2022-12-26 03:22:07','2022-12-26 03:22:07'),(173,'BPT01','100000','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(174,'QP01','0','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(175,'DC01',NULL,'120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(176,'IR01','3500','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(177,'CC01','9','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(178,'MC01','0.00','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(179,'PPA01','1500','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(180,'FP01','105000','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(181,'PDB01','0.00','120000110','1','7750','RFQ1984','2022-12-27 02:39:45','2022-12-27 02:39:45'),(182,'BPT01','100000','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(183,'QP01','5000','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(184,'DC01','1000','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(185,'IR01','3500','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(186,'CC01','9','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(187,'MC01','0.00','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(188,'PPA01','1500','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(189,'FP01','111000','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(190,'PDB01','1.37','120000064','2','8106','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(191,'BPT01','100000','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(192,'QP01','0','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(193,'DC01','1000','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(194,'IR01',NULL,'120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(195,'CC01','9','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(196,'MC01','0.00','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(197,'PPA01','2000','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(198,'FP01','103000','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(199,'PDB01','1.48','120000077','20','9510','RFQ3043','2022-12-27 05:40:13','2022-12-27 05:40:13'),(200,'BPT01','100000','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(201,'QP01','0','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(202,'DC01','1000','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(203,'IR01','4000','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(204,'CC01','9','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(205,'MC01','0.00','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(206,'PPA01','1500','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(207,'FP01','106500','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(208,'PDB01','1.43','120000076','3','6870','RFQ1509','2022-12-27 06:50:44','2022-12-27 06:50:44'),(209,'BPT01','100000','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(210,'QP01','5000','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(211,'DC01',NULL,'120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(212,'IR01','9','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(213,'CC01','0.00','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(214,'MC01','1500','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(215,'PPA01','1000','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(216,'FP01','107500','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(217,'PDB01','1.42','120000065','3','4497','RFQ3695','2022-12-27 07:18:27','2022-12-27 07:18:27'),(218,'BPT01','100000','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(219,'QP01','4500','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(220,'DC01','4000','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(221,'IR01','9','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(222,'CC01','0.00','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(223,'MC01','1500','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(224,'PPA01','1000','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(225,'FP01','111000','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(226,'PDB01','1.37','120000063','2','3844','RFQ4385','2022-12-28 06:13:34','2022-12-28 06:13:34'),(227,'BPT01','100000','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(228,'QP01','0','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(229,'DC01','4000','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(230,'IR01','9','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(231,'CC01','0.00','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(232,'MC01','2000','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(233,'PPA01','1000','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(234,'FP01','107000','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(235,'PDB01','1.90','120000076','3','2371','RFQ3410','2022-12-28 06:44:41','2022-12-28 06:44:41'),(236,'BPT01','100000','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(237,'QP01','0','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(238,'DC01','4000','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(239,'IR01','9','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(240,'CC01','769.29','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(241,'MC01','1500','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(242,'PPA01','1000','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(243,'FP01','107269.29','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(244,'PDB01','1.42','120000112','3','4439','RFQ7773','2023-01-03 06:04:12','2023-01-03 06:04:12'),(245,'BPT01','100000','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(246,'QP01','5000','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(247,'DC01','80000','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(248,'IR01','9','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(249,'CC01','1368.44','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(250,'MC01','1500','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(251,'PPA01','1000','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(252,'FP01','188868.44','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(253,'PDB01','0.80','120000063','19','6466','RFQ4175','2023-01-03 23:53:26','2023-01-03 23:53:26'),(254,'BPT01','100000','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(255,'QP01','5000','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(256,'DC01','80000','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(257,'IR01','9','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(258,'CC01','0.00','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(259,'MC01','2000','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(260,'PPA01','1000','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(261,'FP01','188000','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(262,'PDB01','1.08','120000063','19','4056','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(263,'BPT01','100000','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(264,'QP01','0','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(265,'DC01','4000','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(266,'IR01','9','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(267,'CC01','0.00','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(268,'MC01','1500','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(269,'PPA01','1000','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(270,'FP01','106500','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(271,'PDB01','1.91','120000094','2','8522','RFQ5147','2023-01-09 04:41:49','2023-01-09 04:41:49'),(281,'BPT01','100000','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(282,'QP01','6000','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(283,'DC01','9','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(284,'IR01','9','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(285,'CC01','0.00','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(286,'MC01','1000','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(287,'PPA01','4000','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(288,'FP01','111009','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(289,'PDB01','1.38','120000064','2','3528','RFQ5373','2023-01-10 03:59:39','2023-01-10 03:59:39'),(290,'BPT01','100000','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(291,'QP01','5000','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(292,'DC01',NULL,'120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(293,'IR01','9','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(294,'CC01','0.00','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(295,'MC01','1500','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(296,'PPA01','1000','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(297,'FP01','107500','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(298,'PDB01','1.42','120000147','20','9286','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(299,'BPT01','100000','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(300,'QP01','5000','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(301,'DC01','3500','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(302,'IR01','9','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(303,'CC01','0.00','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(304,'MC01','1500','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(305,'PPA01','1000','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(306,'FP01','111000','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(307,'PDB01','1.37','120000140','1','5277','RFQ3755','2023-01-11 07:23:22','2023-01-11 07:23:22'),(308,'BPT01','100000','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(309,'QP01','0','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(310,'DC01','4000','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(311,'IR01','9','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(312,'CC01','0.00','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(313,'MC01','1000','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(314,'PPA01','1000','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(315,'FP01','106000','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(316,'PDB01','1.44','120000125','5','2836','RFQ5700','2023-01-11 11:06:34','2023-01-11 11:06:34'),(317,'BPT01','100000','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(318,'QP01','0','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(319,'DC01','5000','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(320,'IR01','9','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(321,'CC01','0.00','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(322,'MC01','3000','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(323,'PPA01','1000','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(324,'FP01','109000','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(325,'PDB01','3.32','120000306','2','5816','RFQ9811','2023-01-11 11:22:57','2023-01-11 11:22:57'),(326,'BPT01','100000','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(327,'QP01','5000','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(328,'DC01','4000','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(329,'IR01','9','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(330,'CC01','806.27','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(331,'MC01','2000','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(332,'PPA01','1000','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(333,'FP01','112806.27','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(334,'PDB01','2.27','120000065','2','4300','RFQ9392','2023-01-12 06:37:14','2023-01-12 06:37:14'),(335,'BPT01','100000','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(336,'QP01','2000','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(337,'DC01',NULL,'120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(338,'IR01','9','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(339,'CC01','0.00','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(340,'MC01','1500','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(341,'PPA01','1000','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(342,'FP01','104500','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(343,'PDB01','0.97','120000070','2','9564','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(344,'BPT01','100000','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(345,'QP01','1000','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(346,'DC01','65000','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(347,'IR01','9','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(348,'CC01','1227.90','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(349,'MC01','1500','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(350,'PPA01','1000','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(351,'FP01','169727.9','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(352,'PDB01','4.33','120000078','6','4132','RFQ8219','2023-01-15 01:16:17','2023-01-15 01:16:17'),(353,'BPT01','100000','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(354,'QP01','2000','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(355,'DC01',NULL,'120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(356,'IR01','9','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(357,'CC01','0.00','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(358,'MC01','1800','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(359,'PPA01','1000','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(360,'FP01','104800','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(361,'PDB01','1.26','120000070','5','2448','RFQ7790','2023-01-15 07:13:56','2023-01-15 07:13:56'),(362,'BPT01','100000','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(363,'QP01','5000','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(364,'DC01',NULL,'120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(365,'IR01','9','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(366,'CC01','0.00','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(367,'MC01','1500','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(368,'PPA01','1000','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(369,'FP01','107500','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(370,'PDB01','1.42','120000064','6','5673','RFQ9903','2023-01-15 08:38:36','2023-01-15 08:38:36'),(371,'BPT01','100000','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(372,'QP01','3000','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(373,'DC01',NULL,'120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(374,'IR01','9','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(375,'CC01','0.00','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(376,'MC01','0','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(377,'PPA01','1000','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(378,'FP01','104000','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(379,'PDB01','1.96','120000070','2','3364','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(380,'BPT01','100000','120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(381,'QP01','0','120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(382,'DC01',NULL,'120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(383,'IR01','9','120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(384,'CC01',NULL,'120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(385,'MC01','0','120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(386,'PPA01','1000','120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(387,'FP01','101000','120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(388,'PDB01','1.00','120000077','2','6787','RFQ1824','2023-01-17 01:58:42','2023-01-17 01:58:42'),(389,'BPT01','100000','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(390,'QP01','5000','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(391,'DC01',NULL,'120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(392,'IR01','9','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(393,'CC01','776.68','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(394,'MC01','0','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(395,'PPA01','1000','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(396,'FP01','106776.68','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(397,'PDB01','1.43','120000064','2','8256','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(398,'BPT01','100000','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(399,'QP01','5000','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(400,'DC01',NULL,'120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(401,'IR01','9','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(402,'CC01','1165.08','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(403,'MC01','0','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(404,'PPA01','1000','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(405,'FP01','107165.08','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(406,'PDB01','1.42','120000145','19','3949','RFQ1728','2023-01-17 02:26:47','2023-01-17 02:26:47'),(407,'BPT01','100000','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(408,'QP01','0','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(409,'DC01',NULL,'120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(410,'IR01','9','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(411,'CC01','0.00','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(412,'MC01','0','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(413,'PPA01','1000','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(414,'FP01','101000','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(415,'PDB01','1.00','120000214','11','3449','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(416,'BPT01','100000','120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(417,'QP01','2000','120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(418,'DC01',NULL,'120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(419,'IR01','9','120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(420,'CC01',NULL,'120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(421,'MC01','0','120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(422,'PPA01','10000','120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(423,'FP01','112000','120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(424,'PDB01','9.80','120000158','21','2132','RFQ3802','2023-01-17 03:48:43','2023-01-17 03:48:43'),(425,'BPT01','100000','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(426,'QP01','0','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(427,'DC01',NULL,'120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(428,'IR01','9','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(429,'CC01','0.00','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(430,'MC01','1000','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(431,'PPA01','1000','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(432,'FP01','102000','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(433,'PDB01','2.00','120000071','2','4787','RFQ7779','2023-01-17 06:37:57','2023-01-17 06:37:57'),(434,'BPT01','100000','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(435,'QP01','5000','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(436,'DC01',NULL,'120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(437,'IR01','9','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(438,'CC01','0.00','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(439,'MC01','0','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(440,'PPA01','1000','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(441,'FP01','106000','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(442,'PDB01','1.44','120000138','1','3135','RFQ9113','2023-01-25 00:51:45','2023-01-25 00:51:45'),(443,'BPT01','100000','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(444,'QP01','2000','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(445,'DC01',NULL,'120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(446,'IR01','9','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(447,'CC01','0.00','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(448,'MC01','0','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(449,'PPA01','1000','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(450,'FP01','103000','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(451,'PDB01','0.98','120000152','20','8892','RFQ5381','2023-01-25 03:33:45','2023-01-25 03:33:45'),(452,'BPT01','100000','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(453,'QP01','0','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(454,'DC01',NULL,'120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(455,'IR01','9','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(456,'CC01','0.00','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(457,'MC01','0','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(458,'PPA01','0','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(459,'FP01','100000','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(460,'PDB01','0.00','120000156','1','5366','RFQ2708','2023-01-25 04:13:09','2023-01-25 04:13:09'),(461,'BPT01','100000','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(462,'QP01','5000','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(463,'DC01',NULL,'120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(464,'IR01','9','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(465,'CC01','0.00','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(466,'MC01','0','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(467,'PPA01','1000','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(468,'FP01','106000','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(469,'PDB01','1.44','120000064','11','3970','RFQ5511','2023-01-25 06:43:34','2023-01-25 06:43:34'),(470,'BPT01','100000','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(471,'QP01','2000','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(472,'DC01',NULL,'120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(473,'IR01','9','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(474,'CC01','0.00','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(475,'MC01','0','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(476,'PPA01','1000','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(477,'FP01','103000','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(478,'PDB01','0.98','120000070','11','1316','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(479,'BPT01','100000','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(480,'QP01','0','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(481,'DC01','4000','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(482,'IR01','9','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(483,'CC01',NULL,'120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(484,'MC01','0','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(485,'PPA01','1000','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(486,'FP01','105000','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(487,'PDB01','1.45','120000131','5','2721','RFQ9966','2023-01-31 01:21:55','2023-01-31 01:21:55'),(488,'BPT01','100000','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(489,'QP01','0','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(490,'DC01',NULL,'120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(491,'IR01','9','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(492,'CC01','0.00','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(493,'MC01','0','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(494,'PPA01','1000','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(495,'FP01','101000','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(496,'PDB01','1.00','120000091','12','2155','RFQ4451','2023-01-31 05:32:57','2023-01-31 05:32:57'),(497,'BPT01','100000','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(498,'QP01','5000','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(499,'DC01',NULL,'120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(500,'IR01','9','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(501,'CC01','0.00','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(502,'MC01','0','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(503,'PPA01','1000','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(504,'FP01','106000','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(505,'PDB01','1.44','120000064','11','4243','RFQ4470','2023-02-01 02:01:13','2023-02-01 02:01:13'),(506,'BPT01','100000','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(507,'QP01','5000','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(508,'DC01',NULL,'120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(509,'IR01','9','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(510,'CC01','0.00','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(511,'MC01','100','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(512,'PPA01','1000','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(513,'FP01','106100','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(514,'PDB01','1.53','120000064','2','8418','RFQ2013','2023-02-01 04:30:24','2023-02-01 04:30:24'),(515,'BPT01','100000','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(516,'QP01','0','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(517,'DC01',NULL,'120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(518,'IR01','9','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(519,'CC01','0.00','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(520,'MC01','1500','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(521,'PPA01','1000','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(522,'FP01','102500','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(523,'PDB01','2.50','120000166','21','9635','RFQ4452','2023-02-01 06:09:56','2023-02-01 06:09:56'),(524,'BPT01','100000','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(525,'QP01','0','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(526,'DC01',NULL,'120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(527,'IR01','9','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(528,'CC01','0.00','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(529,'MC01','1500','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(530,'PPA01','1000','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(531,'FP01','102500','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(532,'PDB01','2.50','120000071','2','6893','RFQ7617','2023-02-01 07:09:58','2023-02-01 07:09:58'),(533,'BPT01','100000','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(534,'QP01','0','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(535,'DC01',NULL,'120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(536,'IR01','9','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(537,'CC01','739.70','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(538,'MC01','0','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(539,'PPA01','1000','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(540,'FP01','101739.7','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(541,'PDB01','0.99','120000153','25','2924','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(542,'BPT01','100000','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(543,'QP01','6000','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(544,'DC01',NULL,'120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(545,'IR01','9','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(546,'CC01','1176.18','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(547,'MC01','0','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(548,'PPA01','1500','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(549,'FP01','108676.18','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(550,'PDB01','2.86','120000138','1','4200','RFQ3742','2023-02-06 04:33:04','2023-02-06 04:33:04'),(551,'BPT01','100000','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(552,'QP01','5000','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(553,'DC01',NULL,'120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(554,'IR01','9','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(555,'CC01','0.00','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(556,'MC01','1000','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(557,'PPA01','1000','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(558,'FP01','107000','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(559,'PDB01','2.39','120000138','20','7180','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(560,'BPT01','100000','120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(561,'QP01','3000','120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(562,'DC01',NULL,'120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(563,'IR01','9','120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(564,'CC01',NULL,'120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(565,'MC01','1000','120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(566,'PPA01','1000','120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(567,'FP01','105000','120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(568,'PDB01','2.94','120000076','5','3149','RFQ3988','2023-02-06 05:06:18','2023-02-06 05:06:18'),(569,'BPT01','100000','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(570,'QP01','5000','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(571,'DC01',NULL,'120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(572,'IR01','9','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(573,'CC01','0.00','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(574,'MC01','0','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(575,'PPA01','1000','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(576,'FP01','106000','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(577,'PDB01','1.44','120000145','25','4418','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(578,'BPT01','100000','120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(579,'QP01','7000','120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(580,'DC01',NULL,'120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(581,'IR01','9','120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(582,'CC01',NULL,'120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(583,'MC01','5000','120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(584,'PPA01','1500','120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(585,'FP01','113500','120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(586,'PDB01','3.18','120000146','25','5281','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(587,'BPT01','100000','120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(588,'QP01','0','120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(589,'DC01',NULL,'120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(590,'IR01','9','120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(591,'CC01','739.70','120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(592,'MC01','1000','120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(593,'PPA01','1000','120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(594,'FP01','102739.7','120000144','21','6024','RFQ6680','2023-02-06 06:42:01','2023-02-06 06:42:01'),(595,'PDB01','1.99','120000144','21','6024','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(596,'BPT01','100000','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(597,'QP01','3000','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(598,'DC01',NULL,'120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(599,'IR01','9','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(600,'CC01','1142.89','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(601,'MC01','500','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(602,'PPA01','1000','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(603,'FP01','105642.89','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(604,'PDB01','2.43','120000121','2','4455','RFQ6680','2023-02-06 06:42:02','2023-02-06 06:42:02'),(605,'BPT01','100000','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(606,'QP01','2000','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(607,'DC01',NULL,'120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(608,'IR01','9','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(609,'CC01','0.00','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(610,'MC01','1000','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(611,'PPA01','1000','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(612,'FP01','104000','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(613,'PDB01','1.96','120000118','5','5577','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(614,'BPT01','100000','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(615,'QP01','0','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(616,'DC01','8000','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(617,'IR01','9','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(618,'CC01',NULL,'120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(619,'MC01','1000','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(620,'PPA01','1500','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(621,'FP01','110500','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(622,'PDB01','2.31','120000208','21','9041','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(623,'BPT01','100000','120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(624,'QP01','3000','120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(625,'DC01',NULL,'120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(626,'IR01','9','120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(627,'CC01',NULL,'120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(628,'MC01','1000','120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(629,'PPA01','1000','120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(630,'FP01','105000','120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(631,'PDB01','2.94','120000070','11','7821','RFQ8566','2023-02-07 00:35:37','2023-02-07 00:35:37'),(632,'BPT01','100000','120000063','11','1259','RFQ6514','2023-02-14 05:13:13','2023-02-14 05:13:13'),(633,'QP01','4500','120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(634,'DC01',NULL,'120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(635,'IR01','9','120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(636,'CC01','0.00','120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(637,'MC01','1000','120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(638,'PPA01','1000','120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(639,'FP01','106500','120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(640,'PDB01','1.91','120000063','11','1259','RFQ6514','2023-02-14 05:13:14','2023-02-14 05:13:14'),(641,'BPT01','100000','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(642,'QP01','4500','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(643,'DC01',NULL,'120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(644,'IR01','9','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(645,'CC01','0.00','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(646,'MC01','0','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(647,'PPA01','0','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(648,'FP01','104500','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(649,'PDB01','0.00','120000147','1','8368','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(650,'BPT01','100000','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(651,'QP01','4500','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(652,'DC01','60000','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(653,'IR01','9','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(654,'CC01',NULL,'120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(655,'MC01','0','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(656,'PPA01','0','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(657,'FP01','164500','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(658,'PDB01','0.00','120000147','1','4505','RFQ8781','2023-02-16 06:22:00','2023-02-16 06:22:00'),(659,'BPT01','100000','120000064','2','9338','RFQ1438','2023-02-17 01:22:16','2023-02-17 01:22:16'),(660,'QP01','5000','120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(661,'DC01',NULL,'120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(662,'IR01','9','120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(663,'CC01','0.00','120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(664,'MC01','1000','120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(665,'PPA01','1000','120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(666,'FP01','107000','120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(667,'PDB01','2.39','120000064','2','9338','RFQ1438','2023-02-17 01:22:17','2023-02-17 01:22:17'),(668,'BPT01','100000','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(669,'QP01','5000','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(670,'DC01',NULL,'120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(671,'IR01','9','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(672,'CC01','0.00','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(673,'MC01','500','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(674,'PPA01','1000','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(675,'FP01','106500','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(676,'PDB01','1.91','120000058','11','7469','RFQ6570','2023-02-17 03:58:27','2023-02-17 03:58:27'),(677,'BPT01','100000','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(678,'QP01','0','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(679,'DC01',NULL,'120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(680,'IR01','9','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(681,'CC01','0.00','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(682,'MC01','1000','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(683,'PPA01','1000','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(684,'FP01','102000','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(685,'PDB01','2.00','120000211','1','1397','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(686,'BPT01','100000','120000139','21','8737','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(687,'QP01','5000','120000139','21','8737','RFQ5427','2023-02-17 05:21:46','2023-02-17 05:21:46'),(688,'DC01',NULL,'120000139','21','8737','RFQ5427','2023-02-17 05:21:47','2023-02-17 05:21:47'),(689,'IR01','9','120000139','21','8737','RFQ5427','2023-02-17 05:21:47','2023-02-17 05:21:47'),(690,'CC01',NULL,'120000139','21','8737','RFQ5427','2023-02-17 05:21:47','2023-02-17 05:21:47'),(691,'MC01','1000','120000139','21','8737','RFQ5427','2023-02-17 05:21:47','2023-02-17 05:21:47'),(692,'PPA01','1000','120000139','21','8737','RFQ5427','2023-02-17 05:21:47','2023-02-17 05:21:47'),(693,'FP01','107000','120000139','21','8737','RFQ5427','2023-02-17 05:21:47','2023-02-17 05:21:47'),(694,'PDB01','2.39','120000139','21','8737','RFQ5427','2023-02-17 05:21:47','2023-02-17 05:21:47');
/*!40000 ALTER TABLE `sc_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sccontract_materials`
--

DROP TABLE IF EXISTS `sccontract_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sccontract_materials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contarct_id` int(11) NOT NULL,
  `mat_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incoterms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_terms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `freight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_grp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fr_ind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sccontract_materials`
--

LOCK TABLES `sccontract_materials` WRITE;
/*!40000 ALTER TABLE `sccontract_materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `sccontract_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sccontract_specs`
--

DROP TABLE IF EXISTS `sccontract_specs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sccontract_specs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mat_id` int(11) NOT NULL,
  `comp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissible` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sccontract_specs`
--

LOCK TABLES `sccontract_specs` WRITE;
/*!40000 ALTER TABLE `sccontract_specs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sccontract_specs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scmaterial_description`
--

DROP TABLE IF EXISTS `scmaterial_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scmaterial_description` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `con_mat_id` bigint(20) unsigned DEFAULT NULL COMMENT 'sccontract_materials.id',
  `mat_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scmaterial_description`
--

LOCK TABLES `scmaterial_description` WRITE;
/*!40000 ALTER TABLE `scmaterial_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `scmaterial_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_question`
--

DROP TABLE IF EXISTS `security_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_question` varchar(255) DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_question`
--

LOCK TABLES `security_question` WRITE;
/*!40000 ALTER TABLE `security_question` DISABLE KEYS */;
INSERT INTO `security_question` VALUES (1,'In what city were you born?',0,'2023-01-19 06:13:55','2023-01-19 06:13:55'),(2,'What is your first school name?',0,'2023-01-19 06:15:15','2023-01-19 06:15:15'),(3,'What was your favorite food?',0,'2023-01-19 06:15:23','2023-01-19 06:15:23'),(4,'What was your first car?',0,'2023-01-19 06:15:23','2023-01-19 06:15:23'),(5,'What is your astrological sign?',0,'2023-01-19 06:15:23','2023-01-19 06:15:23'),(6,'What is your pet name?',0,'2023-01-25 01:08:29','2023-01-26 13:04:02');
/*!40000 ALTER TABLE `security_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_question_ans`
--

DROP TABLE IF EXISTS `security_question_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_question_ans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_question_ans`
--

LOCK TABLES `security_question_ans` WRITE;
/*!40000 ALTER TABLE `security_question_ans` DISABLE KEYS */;
INSERT INTO `security_question_ans` VALUES (1,'4','BMW','3',0,'2023-01-20 04:50:53','2023-01-20 04:50:53'),(2,'1','Kolkata','3',0,'2023-01-20 04:50:53','2023-01-20 04:50:53'),(3,'4','AUDI','86',0,'2023-01-20 05:20:05','2023-01-20 05:20:05'),(4,'1','KOLKATA','86',0,'2023-01-20 05:20:05','2023-01-20 05:20:05'),(5,'4','AUDI','100',0,'2023-01-30 04:41:33','2023-01-30 04:41:33'),(6,'1','KOLKATA','100',0,'2023-01-30 04:41:33','2023-01-30 04:41:33'),(7,'4','AUDI','96',0,'2023-01-30 04:41:33','2023-01-30 04:41:33'),(8,'1','KOLKATA','96',0,'2023-01-30 04:41:33','2023-01-30 04:41:33');
/*!40000 ALTER TABLE `security_question_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_remarks`
--

DROP TABLE IF EXISTS `sm_remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_remarks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rfq_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A=accepted,R=rejected',
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_remarks`
--

LOCK TABLES `sm_remarks` WRITE;
/*!40000 ALTER TABLE `sm_remarks` DISABLE KEYS */;
INSERT INTO `sm_remarks` VALUES (1,75,'RFQ6514','accepted','A',0,NULL,'2023-02-14 05:15:16','2023-02-14 05:15:16'),(2,75,'RFQ8781','sales head accepted','A',0,NULL,'2023-02-16 06:22:28','2023-02-16 06:22:28'),(3,75,'RFQ6570','Accepting from sales head, thanks','A',0,NULL,'2023-02-17 04:02:05','2023-02-17 04:02:05'),(4,75,'RFQ5427','sales hade to cam','A',0,NULL,'2023-02-17 05:23:51','2023-02-17 05:23:51');
/*!40000 ALTER TABLE `sm_remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_temp_excel`
--

DROP TABLE IF EXISTS `so_temp_excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_temp_excel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_type` varchar(255) DEFAULT NULL,
  `sales_organization` varchar(255) DEFAULT NULL,
  `distribution_channel` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `sales_office` varchar(255) DEFAULT NULL,
  `sales_group` varchar(255) DEFAULT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_temp_excel`
--

LOCK TABLES `so_temp_excel` WRITE;
/*!40000 ALTER TABLE `so_temp_excel` DISABLE KEYS */;
INSERT INTO `so_temp_excel` VALUES (1,'ZFQS','5500','60','81','2000',NULL,'0040001841','2023-01-11 00:35:55','2023-01-11 00:35:55'),(2,'ZFQS','5500','50','81','2000',NULL,'0040001842','2023-01-11 01:42:13','2023-01-11 01:42:13');
/*!40000 ALTER TABLE `so_temp_excel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categorys`
--

DROP TABLE IF EXISTS `sub_categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categorys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` bigint(20) unsigned NOT NULL,
  `pro_id` bigint(20) unsigned NOT NULL,
  `sub_cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_cat_dese` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mat_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chromium',
  `C` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Carbon',
  `Phos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Phosphorus ',
  `S` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Sulfur',
  `Si` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Silicon',
  `Ti` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plant_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categorys_cat_id_foreign` (`cat_id`),
  KEY `sub_categorys_pro_id_foreign` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categorys`
--

LOCK TABLES `sub_categorys` WRITE;
/*!40000 ALTER TABLE `sub_categorys` DISABLE KEYS */;
INSERT INTO `sub_categorys` VALUES (1,1,1,'Low Phos Lumps(Silica Max 3, Phos Max 0.018)','low-phos-phos-max-002','HC Ferro Chrome Lumps-LP01-10-50,HC Ferro Chrome Lumps-LP01-10-60,HC Ferro Chrome Lumps-LP01-10-70,HC Ferro Chrome Lumps-LP01-10-80,HC Ferro Chrome Lumps-LP01-10-100,HC Ferro Chrome Lumps-LP01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000056,120000057,120000058,120000059,120000060,120000061','60-65','6-8','0.001-0.018','0.001-0.05','2-3','---',1,'LP01','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(2,1,1,'Low Phos Lumps(Silica Max 3, Phos Max 0.02)','low-phos-phos-max-002','HC Ferro Chrome Lumps-LP02-10-50,HC Ferro Chrome Lumps-LP02-10-60,HC Ferro Chrome Lumps-LP02-10-70,HC Ferro Chrome Lumps-LP02-10-80,HC Ferro Chrome Lumps-LP02-10-100,HC Ferro Chrome Lumps-LP02-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000062,120000063,120000064,120000065,120000066,120000067','60-65','6-8','0.0181-0.020','0.001-0.05','2-3','0.001-0.02',1,'LP02','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(3,1,1,'Medium Phos Lumps(Silica Max 3, Phos Max 0.03)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP01-10-50,HC Ferro Chrome Lumps-MP01-10-60,HC Ferro Chrome Lumps-MP01-10-70,HC Ferro Chrome Lumps-MP01-10-80,HC Ferro Chrome Lumps-MP01-10-100,HC Ferro Chrome Lumps-MP01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000068,120000069,120000070,120000071,120000072,120000073','60-65','6-8','0.0210-0.030','0.001-0.05','2-3','---',1,'MP01','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(4,1,1,'Medium Phos Lumps(Silica Max 3, Phos Max 0.035)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP02-10-50,HC Ferro Chrome Lumps-MP02-10-60,HC Ferro Chrome Lumps-MP02-10-70,HC Ferro Chrome Lumps-MP02-10-80,HC Ferro Chrome Lumps-MP02-10-100,HC Ferro Chrome Lumps-MP02-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000074,120000075,120000076,120000077,120000078,120000079','60-65','6-8','0.0310-0.035','0.001-0.05','2-3','---',1,'MP02','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(5,1,1,'Medium Phos Lumps(Silica Max 4, Phos Max 0.03)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP03-10-50,HC Ferro Chrome Lumps-MP03-10-60,HC Ferro Chrome Lumps-MP03-10-70,HC Ferro Chrome Lumps-MP03-10-80,HC Ferro Chrome Lumps-MP03-10-100,HC Ferro Chrome Lumps-MP03-10-150,HC Ferro Chrome Lumps-MP03-20-150','10-50,10-60,10-70,10-80,10-100,10-150,20-150','120000080,120000081,120000082,120000083,120000084,120000085,120000212','60-65','6-8','0.021-0.030','0.001-0.05','3.001-4','---',1,'MP03','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(6,1,1,'Medium Phos Lumps(Silica Max 4, Phos Max 0.035)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP04-10-50,HC Ferro Chrome Lumps-MP04-10-60,HC Ferro Chrome Lumps-MP04-10-70,HC Ferro Chrome Lumps-MP04-10-80,HC Ferro Chrome Lumps-MP04-10-100,HC Ferro Chrome Lumps-MP04-10-150,HC Ferro Chrome Lumps-MP04-20-150','10-50,10-60,10-70,10-80,10-100,10-150,20-150','120000086,120000087,120000088,120000089,120000090,120000091,120000213','60-65','6-8','0.031-0.035','0.001-0.05','3.001-4','---',1,'MP04','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(7,1,1,'High Phos Lumps(Carbon Max 8, Silica Max 3, Phos Max 0.04)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP01-10-50,HC Ferro Chrome Lumps-HP01-10-60,HC Ferro Chrome Lumps-HP01-10-70,HC Ferro Chrome Lumps-HP01-10-80,HC Ferro Chrome Lumps-HP01-10-100,HC Ferro Chrome Lumps-HP01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000092,120000093,120000094,120000095,120000096,120000097','60-65','6-8','0.036-0.04','0.001-0.05','2-3','---',1,'HP01','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(8,1,1,'High Phos Lumps(Carbon Max 8.5, Silica Max 3, Phos Max 0.04)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP02-10-50,HC Ferro Chrome Lumps-HP02-10-60,HC Ferro Chrome Lumps-HP02-10-70,HC Ferro Chrome Lumps-HP02-10-80,HC Ferro Chrome Lumps-HP02-10-100,HC Ferro Chrome Lumps-HP02-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000098,120000099,120000100,120000101,120000102,120000103','60-65','8.001-8.5','0.036-0.04','0.001-0.05','2-3','---',1,'HP02','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(9,1,1,'High Phos Lumps(Carbon Max 8.5, Silica Max 4, Phos Max 0.04)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP03-10-50,HC Ferro Chrome Lumps-HP03-10-60,HC Ferro Chrome Lumps-HP03-10-70,HC Ferro Chrome Lumps-HP03-10-80,HC Ferro Chrome Lumps-HP03-10-100,HC Ferro Chrome Lumps-HP03-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000104,120000105,120000106,120000107,120000108,120000109','60-65','6-8.5','0.036-0.04','0.001-0.05','3.001-4','---',1,'HP03','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(10,1,1,'High Phos Lumps(Carbon Max 8, Silica Max 4, Phos Max 0.05)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP04-10-50,HC Ferro Chrome Lumps-HP04-10-60,HC Ferro Chrome Lumps-HP04-10-70,HC Ferro Chrome Lumps-HP04-10-80,HC Ferro Chrome Lumps-HP04-10-100,HC Ferro Chrome Lumps-HP04-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000110,120000111,120000112,120000113,120000114,120000115','60-65','6-8','0.041-0.05','0.001-0.05','2-4','---',1,'HP04','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(11,1,1,'High Phos Lumps(Carbon Max 8.5, Silica Max 4, Phos Max 0.05)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP05-10-50,HC Ferro Chrome Lumps-HP05-10-60,HC Ferro Chrome Lumps-HP05-10-70,HC Ferro Chrome Lumps-HP05-10-80,HC Ferro Chrome Lumps-HP05-10-100,HC Ferro Chrome Lumps-HP05-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000128,120000129,120000130,120000131,120000132,120000133','60-65','8.001-8.5','0.041-0.05','0.001-0.05','2-4','---',1,'HP05','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(12,1,1,'Low Silica Lumps(Silica Max 2, Phos Max 0.04)','low-silica-silica-max-2','HC Ferro Chrome Lumps-SL01-10-50,HC Ferro Chrome Lumps-SL01-10-60,HC Ferro Chrome Lumps-SL01-10-70,HC Ferro Chrome Lumps-SL01-10-80,HC Ferro Chrome Lumps-SL01-10-100,HC Ferro Chrome Lumps-SL01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000116,120000117,120000118,120000119,120000120,120000121','60-65','6-8','0.001-0.04','0.001-0.05','0.001-2','---',1,'SL01','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(13,1,1,'High Phos Lumps(Slag Touch)','high-phos-slag-touch','HC Ferro Chrome Lumps-OF01-10-50,HC Ferro Chrome Lumps-OF01-10-60,HC Ferro Chrome Lumps-OF01-10-70,HC Ferro Chrome Lumps-OF01-10-80,HC Ferro Chrome Lumps-OF01-10-100,HC Ferro Chrome Lumps-OF01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000122,120000123,120000124,120000125,120000126,120000127','55-65','6-8.5','0.001-0.06','0.001-0.06','0.001-6','---',1,'OF01','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(14,2,1,'Chips & Fines','chips-fines','HC Ferro Chrome Fines-CF02-0-3,HC Ferro Chrome Fines-CF02-0-10','0-3,0-10,3-10','120000055,120000135','50-65','6-8.5','0.001-0.05','0.001-0.05','0.001-6','---',1,'CF02','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(15,1,1,'Low Phos Lumps(Silica Max 3, Phos Max 0.018)','low-phos-phos-max-002','HC Ferro Chrome Lumps-LP01-10-50,HC Ferro Chrome Lumps-LP01-10-60,HC Ferro Chrome Lumps-LP01-10-70,HC Ferro Chrome Lumps-LP01-10-80,HC Ferro Chrome Lumps-LP01-10-100,HC Ferro Chrome Lumps-LP01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000056,120000057,120000058,120000059,120000060,120000061','60-65','6-8','0.001-0.018','0.001-0.05','2-3','---',1,'LP01','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(16,1,1,'Low Phos Lumps(Silica Max 3, Phos Max 0.02)','low-phos-phos-max-002','HC Ferro Chrome Lumps-LP02-10-50,HC Ferro Chrome Lumps-LP02-10-60,HC Ferro Chrome Lumps-LP02-10-70,HC Ferro Chrome Lumps-LP02-10-80,HC Ferro Chrome Lumps-LP02-10-100,HC Ferro Chrome Lumps-LP02-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000062,120000063,120000064,120000065,120000066,120000067','60-65','6-8','0.0181-0.020','0.001-0.05','2-3','0.001-0.02',1,'LP02','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(17,1,1,'Medium Phos Lumps(Silica Max 3, Phos Max 0.03)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP01-10-50,HC Ferro Chrome Lumps-MP01-10-60,HC Ferro Chrome Lumps-MP01-10-70,HC Ferro Chrome Lumps-MP01-10-80,HC Ferro Chrome Lumps-MP01-10-100,HC Ferro Chrome Lumps-MP01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000068,120000069,120000070,120000071,120000072,120000073','60-65','6-8','0.0210-0.030','0.001-0.05','2-3','---',1,'MP01','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(18,1,1,'Medium Phos Lumps(Silica Max 3, Phos Max 0.035)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP02-10-50,HC Ferro Chrome Lumps-MP02-10-60,HC Ferro Chrome Lumps-MP02-10-70,HC Ferro Chrome Lumps-MP02-10-80,HC Ferro Chrome Lumps-MP02-10-100,HC Ferro Chrome Lumps-MP02-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000074,120000075,120000076,120000077,120000078,120000079','60-65','6-8','0.0310-0.035','0.001-0.05','2-3','---',1,'MP02','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(19,1,1,'Medium Phos Lumps(Silica Max 4, Phos Max 0.03)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP03-10-50,HC Ferro Chrome Lumps-MP03-10-60,HC Ferro Chrome Lumps-MP03-10-70,HC Ferro Chrome Lumps-MP03-10-80,HC Ferro Chrome Lumps-MP03-10-100,HC Ferro Chrome Lumps-MP03-10-150,HC Ferro Chrome Lumps-MP03-20-150','10-50,10-60,10-70,10-80,10-100,10-150','120000080,120000081,120000082,120000083,120000084,120000085,120000212','60-65','6-8','0.021-0.030','0.001-0.05','3.001-4','---',1,'MP03','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(20,1,1,'Medium Phos Lumps(Silica Max 4, Phos Max 0.035)','medium-phos-phos-max-0035','HC Ferro Chrome Lumps-MP04-10-50,HC Ferro Chrome Lumps-MP04-10-60,HC Ferro Chrome Lumps-MP04-10-70,HC Ferro Chrome Lumps-MP04-10-80,HC Ferro Chrome Lumps-MP04-10-100,HC Ferro Chrome Lumps-MP04-10-150,HC Ferro Chrome Lumps-MP04-20-150','10-50,10-60,10-70,10-80,10-100,10-150','120000086,120000087,120000088,120000089,120000090,120000091,120000213','60-65','6-8','0.031-0.035','0.001-0.05','3.001-4','---',1,'MP04','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(21,1,1,'High Phos Lumps(Carbon Max 8, Silica Max 3, Phos Max 0.04)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP01-10-50,HC Ferro Chrome Lumps-HP01-10-60,HC Ferro Chrome Lumps-HP01-10-70,HC Ferro Chrome Lumps-HP01-10-80,HC Ferro Chrome Lumps-HP01-10-100,HC Ferro Chrome Lumps-HP01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000092,120000093,120000094,120000095,120000096,120000097','60-65','6-8','0.036-0.04','0.001-0.05','2-3','---',1,'HP01','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(22,1,1,'High Phos Lumps(Carbon Max 8.5, Silica Max 3, Phos Max 0.04)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP02-10-50,HC Ferro Chrome Lumps-HP02-10-60,HC Ferro Chrome Lumps-HP02-10-70,HC Ferro Chrome Lumps-HP02-10-80,HC Ferro Chrome Lumps-HP02-10-100,HC Ferro Chrome Lumps-HP02-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000098,120000099,120000100,120000101,120000102,120000103','60-65','8.001-8.5','0.036-0.04','0.001-0.05','2-3','---',1,'HP02','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(23,1,1,'High Phos Lumps(Carbon Max 8.5, Silica Max 4, Phos Max 0.04)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP03-10-50,HC Ferro Chrome Lumps-HP03-10-60,HC Ferro Chrome Lumps-HP03-10-70,HC Ferro Chrome Lumps-HP03-10-80,HC Ferro Chrome Lumps-HP03-10-100,HC Ferro Chrome Lumps-HP03-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000104,120000105,120000106,120000107,120000108,120000109','60-65','6-8.5','0.036-0.04','0.001-0.05','3.001-4','---',1,'HP03','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(24,1,1,'High Phos Lumps(Carbon Max 8, Silica Max 4, Phos Max 0.05)','high-phos-phos-max-005','HC Ferro Chrome Lumps-HP04-10-50,HC Ferro Chrome Lumps-HP04-10-60,HC Ferro Chrome Lumps-HP04-10-70,HC Ferro Chrome Lumps-HP04-10-80,HC Ferro Chrome Lumps-HP04-10-100,HC Ferro Chrome Lumps-HP04-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000110,120000111,120000112,120000113,120000114,120000115','60-65','6-8','0.041-0.05','0.001-0.05','2-4','---',1,'HP04','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(26,1,1,'Low Silica Lumps(Silica Max 2, Phos Max 0.04)','low-silica-silica-max-2','HC Ferro Chrome Lumps-SL01-10-50,HC Ferro Chrome Lumps-SL01-10-60,HC Ferro Chrome Lumps-SL01-10-70,HC Ferro Chrome Lumps-SL01-10-80,HC Ferro Chrome Lumps-SL01-10-100,HC Ferro Chrome Lumps-SL01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000116,120000117,120000118,120000119,120000120,120000121','60-65','6-8','0.001-0.04','0.001-0.05','0.001-2','---',1,'SL01','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(27,1,1,'High Phos Lumps(Slag Touch)','high-phos-slag-touch','HC Ferro Chrome Lumps-OF01-10-50,HC Ferro Chrome Lumps-OF01-10-60,HC Ferro Chrome Lumps-OF01-10-70,HC Ferro Chrome Lumps-OF01-10-80,HC Ferro Chrome Lumps-OF01-10-100,HC Ferro Chrome Lumps-OF01-10-150','10-50,10-60,10-70,10-80,10-100,10-150','120000122,120000123,120000124,120000125,120000126,120000127','55-65','6-8.5','0.001-0.06','0.001-0.06','0.001-6','---',1,'OF01','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(28,2,1,'Chips & Fines','chips-fines','HC Ferro Chrome Fines-CF02-0-3,HC Ferro Chrome Fines-CF02-0-10','0-3,0-10,3-10','120000055,120000135','50-65','6-8.5','0.001-0.05','0.001-0.05','0.001-6','---',1,'CF02','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(29,4,2,'High Grade Chrome Ore','high-grade-chrome-ore','Subcategory description','10-50,10-70',NULL,'52-100%','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'F','2022-10-24 14:29:28','2022-10-24 14:35:10'),(30,4,2,'Medium Grade Chrome Ore','medium-grade-chrome-ore','Subcategory description','10-50,10-100',NULL,'40-52%','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'F','2022-10-24 14:29:28','2022-10-24 14:35:10'),(31,4,2,'Low-Grade Chrome Ore','low-grade-chrome-ore','Subcategory description','10-15,10-70',NULL,'30-40%','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'F','2022-10-24 14:29:28','2022-10-24 14:35:10'),(32,4,2,'High Grade Chrome Ore','high-grade-chrome-ore','Subcategory description','10-15,10-70',NULL,'52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'F','2022-10-24 14:29:28','2022-10-24 14:35:10'),(33,4,2,'Medium Grade Chrome Ore','medium-grade-chrome-ore','Subcategory description','10-50,10-70',NULL,'40-52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'F','2022-10-24 14:29:28','2022-10-24 14:35:10'),(34,4,2,'Low-Grade Chrome Ore','low-grade-chrome-ore','Subcategory description','10-15,10-70',NULL,'<40% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'F','2022-10-24 14:29:28','2022-10-24 14:35:10'),(35,4,2,'High Grade Chrome Ore','high-grade-chrome-ore','Subcategory description','10-50,10-70',NULL,'52-100%','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'O','2022-10-24 14:29:28','2022-10-24 14:35:10'),(36,4,2,'Medium Grade Chrome Ore','medium-grade-chrome-ore','Subcategory description','10-50,10-100',NULL,'40-52%','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'O','2022-10-24 14:29:28','2022-10-24 14:35:10'),(37,4,2,'Low-Grade Chrome Ore','low-grade-chrome-ore','Subcategory description','10-15,10-70',NULL,'30-40%','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'O','2022-10-24 14:29:28','2022-10-24 14:35:10'),(38,4,2,'High Grade Chrome Ore','high-grade-chrome-ore','Subcategory description','10-15,10-70',NULL,'52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'O','2022-10-24 14:29:28','2022-10-24 14:35:10'),(39,4,2,'Medium Grade Chrome Ore','medium-grade-chrome-ore','Subcategory description','10-50,10-70',NULL,'40-52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'O','2022-10-24 14:29:28','2022-10-24 14:35:10'),(40,4,2,'Low-Grade Chrome Ore','low-grade-chrome-ore','Subcategory description','10-15,10-70',NULL,'<40% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,NULL,'O','2022-10-24 14:29:28','2022-10-24 14:35:10'),(41,1,1,'Medium Phos (Zigged Material)-MP03','Medium Phos (Zigged Material)-MP03','Medium Phos (Zigged Material)-MP03','10-30',' ','58-65','6-8.5','0.021-0.03','0.001-0.05','','---',1,'MP03','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(42,1,1,'Medium Phos (Zigged Material)-MP04','Medium Phos (Zigged Material)-MP04','Medium Phos (Zigged Material)-MP04','10-30',' ','58-65','6-8.5','0.031-0.035','0.001-0.05','','---',1,'MP04','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(43,1,1,'Medium Phos (Zigged Material)-HP03','Medium Phos (Zigged Material)-HP03','Medium Phos (Zigged Material)-HP03','10-30',' ','58-65','6-8.5','0.036-0.04','0.001-0.05','','---',1,'HP03','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(44,1,1,'Medium Phos (Zigged Material)-HP04','Medium Phos (Zigged Material)-HP04','Medium Phos (Zigged Material)-HP04','10-30',' ','58-65','6-8.5','0.041-0.05','0.001-0.06',' ','---',1,'HP04','O','2023-01-03 23:51:51','2023-01-03 23:51:51'),(45,1,1,'Medium Phos (Zigged Material)-MP03','Medium Phos (Zigged Material)-MP03','Medium Phos (Zigged Material)-MP03','10-30',' ','58-65','6-8.5','0.021-0.03','0.001-0.05','','---',1,'MP03','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(46,1,1,'Medium Phos (Zigged Material)-MP04','Medium Phos (Zigged Material)-MP04','Medium Phos (Zigged Material)-MP04','10-30',' ','58-65','6-8.5','0.031-0.035','0.001-0.05','','---',1,'MP04','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(47,1,1,'Medium Phos (Zigged Material)-HP03','Medium Phos (Zigged Material)-HP03','Medium Phos (Zigged Material)-HP03','10-30',' ','58-65','6-8.5','0.036-0.04','0.001-0.05','','---',1,'HP03','F','2023-01-03 23:51:51','2023-01-03 23:51:51'),(48,1,1,'Medium Phos (Zigged Material)-HP04','Medium Phos (Zigged Material)-HP04','Medium Phos (Zigged Material)-HP04','10-30',' ','58-65','6-8.5','0.041-0.05','0.001-0.06',' ','---',1,'HP04','F','2023-01-03 23:51:51','2023-01-03 23:51:51');
/*!40000 ALTER TABLE `sub_categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categorys_06_12`
--

DROP TABLE IF EXISTS `sub_categorys_06_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categorys_06_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` bigint(20) unsigned NOT NULL,
  `pro_id` bigint(20) unsigned NOT NULL,
  `sub_cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_cat_dese` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chromium',
  `C` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Carbon',
  `Phos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Phosphorus ',
  `S` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Sulfur',
  `Si` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Silicon',
  `Ti` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categorys_cat_id_foreign` (`cat_id`),
  KEY `sub_categorys_pro_id_foreign` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categorys_06_12`
--

LOCK TABLES `sub_categorys_06_12` WRITE;
/*!40000 ALTER TABLE `sub_categorys_06_12` DISABLE KEYS */;
INSERT INTO `sub_categorys_06_12` VALUES (1,1,1,'High Phos (Phos Max 0.05)\n','high-phos','HC Ferro Chrome Lumps-HP01\n','10-50,10-60,10-70,10-80,10-100,10-150','60-65%','6-8%','0.036-0.04%','0.01-0.05','2-3%',NULL,2,'2022-09-08 22:56:26','2022-09-08 23:03:00'),(2,1,1,'Low Phos (Phos Max 0.02)\r\n','low-phos','HC Ferro Chrome Lumps-LP01\n','10-50,10-60,10-70,10-80,10-100,10-150','60-65%','6-8%','0.01-0.18%','0.01-0.05','2-3%',NULL,1,NULL,NULL),(3,1,1,'Medium Phos (Phos Max 0.035)\r\n','medium-phos','HC Ferro Chrome Lumps-MP01\r\n','10-50,10-60,10-70,10-80,10-100,10-150,20-150','60-65%','6-8%','0.0210-0.030%','0.01-0.05','2-3%',NULL,1,NULL,NULL),(4,1,1,'Low Silicon (Silicon Max 2)\n','low-silicon','HC Ferro Chrome Lumps-SL01\r\n','10-50,10-60,10-70,10-80,10-100,10-150','60-65%','6-8%','0.031-0.035%','0.01-0.05','0.001-2%',NULL,1,NULL,NULL),(5,1,1,'High Phos (Slag Touch)\r\n','high-phos','HC Ferro Chrome Lumps-OF01\r\n','10-50,10-60,10-70,10-80,10-100,10-150','60-65%','6-8%','0.031-0.035%','0.01-0.05','3.001-4%',NULL,1,NULL,NULL),(6,1,1,'Medium Phos (Zigged Material)\n','medium-phos','HC Ferro Chrome Lumps-MP03-10-30\n','10-30\n','60-65%','6-8%','0.031-0.035%','0.01-0.05','3.001-4%',NULL,1,NULL,NULL),(7,2,1,'Chips & Fines\n','chips-fines','HC Ferochrome Chips & Fines\n','0-3,0-10,3-10','60-65%','6-8%','0.031-0.035%','0.01-0.05','3.001-4%',NULL,1,NULL,NULL),(8,4,2,'High Grade Chrome Ore','high-grade-chrome-ore','Subcategory description','10-50,10-70','52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,3,'2022-10-24 19:59:28','2022-10-24 20:05:10'),(9,4,2,'Medium Grade Chrome Ore','medium-grade-chrome-ore','Subcategory description','10-50,10-100','40-52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,3,'2022-10-24 19:59:28','2022-10-24 20:05:10'),(10,4,2,'Low-Grade Chrome Ore','low-grade-chrome-ore','Subcategory description','10-15,10-70','<40% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,3,'2022-10-24 19:59:28','2022-10-24 20:05:10'),(11,5,2,'High Grade Chrome Ore','high-grade-chrome-ore','Subcategory description','10-15,10-70','52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,3,'2022-10-24 19:59:28','2022-10-24 20:05:10'),(12,5,2,'Medium Grade Chrome Ore','medium-grade-chrome-ore','Subcategory description','10-50,10-70','40-52% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,3,'2022-10-24 19:59:28','2022-10-24 20:05:10'),(13,5,2,'Low-Grade Chrome Ore','low-grade-chrome-ore','Subcategory description','10-15,10-70','<40% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,3,'2022-10-24 19:59:28','2022-10-24 20:05:10');
/*!40000 ALTER TABLE `sub_categorys_06_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categorys_old`
--

DROP TABLE IF EXISTS `sub_categorys_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categorys_old` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` bigint(20) unsigned NOT NULL,
  `pro_id` bigint(20) unsigned NOT NULL,
  `sub_cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_cat_dese` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chromium',
  `C` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Carbon',
  `Phos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Phosphorus ',
  `S` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Sulfur',
  `Si` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Silicon',
  `Ti` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categorys_cat_id_foreign` (`cat_id`),
  KEY `sub_categorys_pro_id_foreign` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categorys_old`
--

LOCK TABLES `sub_categorys_old` WRITE;
/*!40000 ALTER TABLE `sub_categorys_old` DISABLE KEYS */;
INSERT INTO `sub_categorys_old` VALUES (1,1,1,'High Phos (Phos Max 0.05)\n','high-phos','HC Ferro Chrome Lumps-HP01\n','50,60,70,80,100,150','60-65%','6-8%','0.036-0.04%','0.01-0.05','2-3%',NULL,2,'2022-09-09 04:26:26','2022-09-09 04:33:00'),(2,2,1,'Medium','medium','Subcategory medium description update','50,70,100,120','60% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,1,'2022-09-09 04:40:53','2022-09-09 04:40:53'),(3,4,1,'HIGH PHOS','high-phos','Subcategory description','50,70,100,120','60% Min','6-8%','0.05% Max','0.05% Max','4% Max',NULL,3,'2022-10-25 01:29:28','2022-10-25 01:35:10'),(4,1,1,'Low Phos (Phos Max 0.02)\r\n','low-phos','HC Ferro Chrome Lumps-LP01\n','50,60,70,80,100,150','60-65%','6-8%','0.01-0.18%','0.01-0.05','2-3%',NULL,1,NULL,NULL),(16,1,1,'Medium Phos (Phos Max 0.035)\r\n','medium-phos','HC Ferro Chrome Lumps-MP01\r\n','50,60,70,80,100,150','60-65%','6-8%','0.0210-0.030%','0.01-0.05','2-3%',NULL,1,NULL,NULL),(20,1,1,'Low Silicon (Silicon Max 2)\n','low-silicon','HC Ferro Chrome Lumps-SL01\r\n','50,60,70,80,100,150\r\n','60-65%','6-8%','0.031-0.035%','0.01-0.05','0.001-2%',NULL,1,NULL,NULL),(21,1,1,'High Phos (Slag Touch)\r\n','high-phos','HC Ferro Chrome Lumps-OF01\r\n','50,60,70,80,100,150\r\n','60-65%','6-8%','0.031-0.035%','0.01-0.05','3.001-4%',NULL,1,NULL,NULL),(22,2,1,'Chips & Fines\n','chips-fines','HC Ferochrome Chips & Fines\n','3-10,0-3,0-10','60-65%','6-8%','0.031-0.035%','0.01-0.05','3.001-4%',NULL,1,NULL,NULL),(23,1,1,'Medium Phos (Zigged Material)\n','medium-phos','HC Ferro Chrome Lumps-MP03-10-30\n','30\n','60-65%','6-8%','0.031-0.035%','0.01-0.05','3.001-4%',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `sub_categorys_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threshold_limits`
--

DROP TABLE IF EXISTS `threshold_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threshold_limits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Price_Premium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Misc_Expense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Delivery_Cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Credit_Cost_For_30_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Credit_Cost_For_40_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CAM_Discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Active|2=Inactive|3=Delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threshold_limits`
--

LOCK TABLES `threshold_limits` WRITE;
/*!40000 ALTER TABLE `threshold_limits` DISABLE KEYS */;
INSERT INTO `threshold_limits` VALUES (1,'5000','5000','5000','5000','5000','2000',1,'2022-10-26 06:58:35','2022-10-26 06:58:35');
/*!40000 ALTER TABLE `threshold_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `login_attempt` int(11) NOT NULL DEFAULT '0',
  `jwt_token` text COLLATE utf8mb4_unicode_ci,
  `is_loggedin` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_otp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pref_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pref_product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_gst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_linked_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_pan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_nature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tcs_tds_applicable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresstwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` text COLLATE utf8mb4_unicode_ci,
  `address_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_proof_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_cheque_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_card_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `turnover_declare` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itr_last_yr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tcs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_dt` date DEFAULT NULL,
  `gst_dt` date DEFAULT NULL,
  `formD_dt` date DEFAULT NULL,
  `tcs_dt` date DEFAULT NULL,
  `user_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cus_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'vishu kumar','amitbeas17@gmail.com','0',0,NULL,0,'6545697011','901372',NULL,'$2y$10$0DD4ZrVZCjMkH6/KnLyrRuRLiYiVjUsBJQBYOOF7xHYDyjffeWwTm','hjjk54','hu64','456kh','hjg jjh','null','00','C','iuij5454','yfhg gfghf hfhg','gjhhhhhg545','ghgfh','hjhghgj',NULL,'hjhg','hjvjg','ugjhg hjgjhg jhgjh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','971199','2022-08-31 03:35:08','2023-02-16 04:50:46',NULL,NULL,NULL),(2,NULL,'Amit Sarkar','amitbeas178@gmail.com','0',0,NULL,0,'65456971',NULL,NULL,'$2y$10$ixGS80KIh47j.Zb/K51mc.SNa.hwTDgdPEjU83KxBvpIC3a6L6WmW','hjjk54','hu64','456kh','hjg jjh','null','00','C','iuij5454','yfhg gfghf hfhg','gjhhhhhg544','ghgfh','hjhghgj',NULL,'hjhg','hjvjg','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Sector 1, Bidhannagar','Kolkata','West Bengal','700064','North',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2022-08-31 04:27:48','2023-01-30 04:17:21',NULL,NULL,NULL),(3,'0050001234','BEAS PVT LTD','sourav.mondal@beas.co.in','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvdHNtbC1zaG9wXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjc2NjMyMDYxLCJleHAiOjE2NzY3MTg0NjEsIm5iZiI6MTY3NjYzMjA2MSwianRpIjoiSzBwMVJ1cFdKeW9pUUt6aCIsInN1YiI6MywicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.fbca6IIZ7AzhBK9g76eRpmPeO5FBj5hF9T6NFueHSjA',1,'7033025509',NULL,NULL,'$2y$10$DPg8X2r4IoS6P32RqyLI4O.qnQy1ts/FIGMUvOInV1eKbASIVqeUC',NULL,'ORG_PAN8787','BEAS PVT LTD','ORD-ADDRESS','High,Medium,Medium Grade Friable Chrome Ore','10-150','C','6565456564564565',NULL,'KGF6735KF','SAM-CUST','Trader',NULL,'ARUN','SARKAR','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Sector 1, Bidhannagar','Kolkata','West Bengal','700064','North',NULL,'1663133805-5894.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','','2022-09-14 00:06:45','2023-02-17 05:37:41',NULL,NULL,NULL),(4,NULL,'John','sam11@gmail.com','0',1,NULL,0,'8576563453',NULL,NULL,'$2y$10$PNVUH2r4sFHP4Jdiv7rZvu.lNs8F4UvdrGoXuGGXT0Aeu6kWixiUe',NULL,'DG56546G','FGDGDFGD','GDFGDFGDG','Medium,Low,Medium Grade Friable Chrome Ore','10-150','C','54645654645645',NULL,'GDG4T4H4',NULL,'Trader',NULL,'JONY','JONY','GDGFDG SFRWSF',NULL,'Bodensdorf','Carinthia',NULL,NULL,NULL,'1663236472-7893.png','1663236472-5660.jpg','1663236472-4511.png',NULL,NULL,NULL,'1663236472-7684.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-15 04:37:53','2022-10-31 08:02:01',NULL,NULL,NULL),(6,NULL,'Sayan Ghosh','beasoffice2@gmail.com','0',0,NULL,0,'8617260309',NULL,NULL,'$2y$10$yyAqHe3CYgLjGaEINCr9o.4/aCYwLfA8TMkStjzFdInY4QIG6XPeu',NULL,NULL,NULL,NULL,NULL,NULL,'Kam','',NULL,'','',NULL,NULL,'',NULL,NULL,NULL,'barasat','west bengal','700124','North',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-28 07:20:42','2022-10-28 07:20:42',NULL,NULL,NULL),(7,NULL,'Rishav Mishra','rishva@gmail.com','0',0,NULL,0,'9974555142',NULL,NULL,'$2y$10$TJ4il2rQS6P.96DiOMhGOuBd8qlQ97UNnTx1uqI0P5p2ta5E8FOkS',NULL,NULL,NULL,NULL,NULL,NULL,'Kam','',NULL,'',NULL,NULL,NULL,'',NULL,NULL,NULL,'kolkata','west bengal','65225',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-28 07:20:42','2022-10-28 07:20:42',NULL,NULL,NULL),(8,NULL,'Sales','srvmondal@gmail.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvdHNtbC1zaG9wXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjc2NjI4OTYxLCJleHAiOjE2NzY3MTUzNjEsIm5iZiI6MTY3NjYyODk2MSwianRpIjoiUmZLdmxHZ2lFeUgxVWo0NCIsInN1YiI6OCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.x3ux1G-kWsIZqmWweTqTYFxEtKIFS_-JdQ7SKr3vr7Q',1,'8516326362',NULL,NULL,'$2y$10$BbN2LRMBC.S.xsLw3SxL6egAqxmPkS64K6GZ4qkTbijCDLJ5opoZq',NULL,'GDF54G56DG',NULL,NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Sales','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','ALOK','LAST',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-02-17 04:46:01',NULL,NULL,NULL),(35,NULL,'User 1','user1@gmail.com','0',0,NULL,0,'8767564543',NULL,NULL,'$2y$10$cgxTrhSy3FXaZ1CiEp5ZjOHH2G0DWuTcUiWlNYjfofDSEXVy6aq/y',NULL,'ORG_PAN8787','ORG-NAME HHH','ORD-ADDRESS','High,Medium,Medium Grade Friable Chrome Ore','10-150','C','6565456564564565',NULL,'KGF6735KF',NULL,'Trader',NULL,'ARUN','SARKAR','central park','street no - 115','Kolkata','West Bengal',NULL,NULL,NULL,'1663133805-5894.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-14 00:06:45','2022-11-02 00:50:37',NULL,NULL,NULL),(36,NULL,'VISA STEEL LTD\n','user2@gmail.com','0',0,NULL,0,'9874771118\n',NULL,NULL,'$2y$10$yePWtCsm8RjEAH404ZXXoO6iBeM9DZVHmhYsuaie7sj2BX1WklAfO','hjjk54','AAACV9836E\n','456kh','hjg jjh','null','00','C','iuij5454','yfhg gfghf hfhg','AAACV9836E\n','VISA STEEL LTD\n','hjhghgj',NULL,'hjhg','hjvjg','ugjhg hjgjhg jhgjh','street no - 112','Kolkata','West Bengal','700137','East',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'971199','2022-08-31 03:35:08','2022-10-28 07:01:33',NULL,NULL,NULL),(37,NULL,'TSML','apoorv.gupta1@tatasteelmining.com','0',0,NULL,0,'7368806127',NULL,NULL,'$2y$10$9mtNBsfroHzOMRFQE4KwNe7QNO6aBZq0jPtY.xGCg4Fmyc1j9dguy','56897458','8954785',NULL,NULL,NULL,NULL,'Kam','8745123',NULL,'895647813',NULL,NULL,NULL,'Apoorv','Gupta',NULL,NULL,NULL,NULL,NULL,'North',NULL,'1668753524-7524.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-15','2022-09-15','2022-09-15','2022-09-15',NULL,NULL,'2022-11-18 01:08:44','2022-11-18 01:08:44',NULL,NULL,NULL),(38,NULL,'TSML','sweenal.meshram@tatasteelmining.com','0',0,NULL,0,'9264192063',NULL,NULL,'$2y$10$SbzXuE/utTQT0qsfzBngBOWlKaukIGbKfoMxZW.Y7jlI9XbJy96Ci','56897458','8954785',NULL,NULL,NULL,NULL,'Kam','8745123',NULL,'89564781',NULL,NULL,NULL,'Sweenal Arvind','Meshram',NULL,NULL,NULL,NULL,NULL,'West',NULL,'1668754382-6083.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-15','2022-09-15','2022-09-15','2022-09-15',NULL,NULL,'2022-11-18 01:23:02','2022-11-18 01:23:02',NULL,NULL,NULL),(39,NULL,'TSML','atanu.das1@tatasteelmining.com','0',0,NULL,0,'9007006024',NULL,NULL,'$2y$10$jvfWd4MhAJUNvq5V8lgeiuoTyN3in5cMVrthv18AQIZhEB6hEQpoq','5689745854','895478554',NULL,NULL,NULL,NULL,'Kam','8745123',NULL,'895647817',NULL,NULL,NULL,'Atanu','Das',NULL,NULL,NULL,NULL,NULL,'East',NULL,'1668754538-8708.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-15','2022-09-15','2022-09-15','2022-09-15',NULL,NULL,'2022-11-18 01:25:38','2022-11-18 01:25:38',NULL,NULL,NULL),(40,'0050000044\n','Jai Balaji Industries ltd','jbi@gmail.com','0',0,NULL,0,'65456970',NULL,NULL,'$2y$10$yePWtCsm8RjEAH404ZXXoO6iBeM9DZVHmhYsuaie7sj2BX1WklAfO','19AACCR7005H1ZF','AACCR7005H','Jai Balaji Industries ltd','Conversion A/c TSML, Vill. Banskopa','null','00','C','19AACCR7005H1ZF','yfhg gfghf hfhg','gjhhhhhg545','Jai Balaji Industries ltd','hjhghgj',NULL,'hjhg','hjvjg','Burdwan, Durgapur-713212','street no - 112','Durgapur','West Bengal','713212','North',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'971199','2022-08-30 16:35:08','2022-10-27 20:01:33',NULL,NULL,NULL),(41,NULL,'Aarti Steels Ltd.(Steel & Power)','artisteel@gmail.com','0',0,NULL,0,'0671-3061150',NULL,NULL,'$2y$10$yePWtCsm8RjEAH404ZXXoO6iBeM9DZVHmhYsuaie7sj2BX1WklAfO','21AACCR7005H1ZU','AACCR7005H','Jai Balaji Industries ltd','Conversion A/c TSML, Vill. Banskopa','null','00','C','21AACCR7005H1ZU','yfhg gfghf hfhg','gjhhhhhg545','Aarti Steels Ltd.(Steel & Power)','hjhghgj',NULL,'hjhg','hjvjg','Athagarh, Cuttack, Pin-75','Athagarh, Cuttack, Pin-75','Cuttack','Odisha','754029','North',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'971199','2022-08-30 16:35:08','2022-10-27 20:01:33',NULL,NULL,NULL),(42,NULL,'Shyam Metalics And Energy Ltd','sme@gmail.com','0',0,NULL,0,'0671-3061150',NULL,NULL,'$2y$10$yePWtCsm8RjEAH404ZXXoO6iBeM9DZVHmhYsuaie7sj2BX1WklAfO','21AACCR7005H1ZU','AACCR7005H','Shyam Metalics And Energy Ltd','Conversion A/c TSML, Vill. Banskopa','null','00','C','21AACCR7005H1ZU','yfhg gfghf hfhg','gjhhhhhg545','Shyam Metalics And Energy Ltd','hjhghgj',NULL,'hjhg','hjvjg','Pandilot,Lapanga','Sambalpur-768212',' Sambalpur','Odisha','768212','North',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'971199','2022-08-30 16:35:08','2022-10-27 20:01:33',NULL,NULL,NULL),(43,NULL,'Jindal Steel and Power Ltd','jsp@gmail.com','0',0,NULL,0,'0671-3061150',NULL,NULL,'$2y$10$yePWtCsm8RjEAH404ZXXoO6iBeM9DZVHmhYsuaie7sj2BX1WklAfO','22AAACJ7097D1ZQ','AAACJ7097D','Shyam Metalics And Energy Ltd','Conversion A/c TSML, Vill. Banskopa','null','00','C','22AAACJ7097D1ZQ','yfhg gfghf hfhg','gjhhhhhg545','Jindal Steel and Power Ltd','hjhghgj',NULL,'hjhg','hjvjg','Patrapali,Raigarh, Chhattisgarh-496','Patrapali,Raigarh, Chhattisgarh-496','Raigarh','Chhattisagarh','496001','North',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'971199','2022-08-30 16:35:08','2022-10-27 20:01:33',NULL,NULL,NULL),(44,'0050000010\n','Star Wire (India) Limited','sumitagnihotri@starwire.in','0',0,NULL,0,'9212222294',NULL,NULL,'$2y$10$yePWtCsm8RjEAH404ZXXoO6iBeM9DZVHmhYsuaie7sj2BX1WklAfO','06AAECS1124Q1Z8','AAECS1124Q','Star Wire (India) Limited','Mahana Road, Chhaninsa, Ballabgar','null','00','C','22AAACJ7097D1ZQ','yfhg gfghf hfhg','gjhhhhhg545','Star Wire (India) Limited','hjhghgj',NULL,'hjhg','hjvjg','Mahana Road, Chhaninsa, Ballabgar','Mahana Road, Chhaninsa, Ballabgar','Ballabgarh','Haryana','121004','North',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'971199','2022-08-30 16:35:08','2022-10-27 20:01:33',NULL,NULL,NULL),(46,NULL,'Tsml Customer ','tsmlcustomer@gmail.com','0',0,NULL,0,'8767564543',NULL,NULL,'$2y$10$cgxTrhSy3FXaZ1CiEp5ZjOHH2G0DWuTcUiWlNYjfofDSEXVy6aq/y',NULL,'ORG_PAN8787','ORG-NAME HHH','ORD-ADDRESS','High,Medium,Medium Grade Friable Chrome Ore','10-150','C','6565456564564565',NULL,'KGF6735KF',NULL,'Trader',NULL,'Tsml','Customer','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Sector 1, Bidhannagar','Kolkata','West Bengal','700064','North',NULL,'1663133805-5894.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-14 00:06:45','2022-11-02 00:50:37',NULL,NULL,NULL),(47,NULL,'Tsml Sales','tsmlsales@gmail.com','0',0,NULL,0,'8516326362',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DG',NULL,NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Sales','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Sales ',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-01-25 06:43:43',NULL,NULL,NULL),(48,NULL,'Tsml Cam','tsmlcam@gmail.com','0',0,NULL,0,'8516326362',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DG',NULL,NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Kam','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Cam',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(49,NULL,'RM North1','rmnorth1@gmail.com','0',0,NULL,0,'8516326389',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DG',NULL,NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','RM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','RM',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(50,NULL,'RM North2','rmnorth2@gmail.com','0',0,NULL,0,'8516326381',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DH',NULL,NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','RM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','RM',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(51,NULL,'RM South','rmsouth@gmail.com','0',0,NULL,0,'8516326381',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DH',NULL,NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','RM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','RM',NULL,NULL,'undefined','West Bengal',NULL,'South',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(52,NULL,'RM East','rmeast@gmail.com','0',0,NULL,0,'8516326397',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DHL',NULL,NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','RM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','RM',NULL,NULL,'undefined','West Bengal',NULL,'East',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(53,NULL,'John','arun@gmail.com','0',0,NULL,0,'988675755',NULL,NULL,'$2y$10$MwBv5L/nj7e0Oj8WUtHNGeqCgrJ0UpQEM24Gf3OnvlOexNyj6vnOe',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium,Medium Grade Friable Chrome Ore','10-150',NULL,'11111111111111',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,'Demo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-07 01:13:26','2022-12-07 01:13:26',NULL,NULL,NULL),(54,NULL,'John','arun@gmail.com','0',0,NULL,0,'9786786657',NULL,NULL,'$2y$10$j6cFFJisoaYwaulJs1/gm.zn8/peJ3Ntq6hNrWAsDTgsoMseSkIE2',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','High Grade Friable Chrome Ore','10-150',NULL,'111111111111',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,'Demo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-07 01:20:37','2022-12-07 01:20:37',NULL,NULL,NULL),(55,NULL,'rishu','dfadddsrishaav@srvtechservices.comsggqq','0',0,NULL,0,'706938215563sgdqq',NULL,NULL,'$2y$10$hVu7P2RuiRyk/tTKFAcnNe1aD/a5K6ENzJpc2UiRNw0joYVw3o.ci',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'uhyjghg54d3sgdq',NULL,'6+52654hjbs3sgdq',NULL,NULL,NULL,'newname',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-07 01:30:05','2022-12-07 01:30:05',NULL,NULL,NULL),(56,NULL,'John','arun@gmail.com','0',0,NULL,0,'9576757564',NULL,NULL,'$2y$10$pKt0k1CsM5heSb3FOVFSE.iQYzit7mNTgiSOnrhQBUT8Fy7IJJ552',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','HC Ferro Chrome (Chips)','10-150',NULL,'999999999999',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-07 03:31:29','2022-12-07 03:31:29',NULL,NULL,NULL),(57,NULL,'John','aks@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$i0ayI3dSOntRoc3wuXRT9e6BD8KWEz2RTa29gyXLHjXmDy6LAuBri',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:14:08','2022-12-07 07:14:08',NULL,NULL,NULL),(58,NULL,'John','aks@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$n3DrlCYgm1QNOxKXrczpQedNiorBXf/yuUsxMbTC1CXhdIXTe.Shq',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:15:01','2022-12-07 07:15:01',NULL,NULL,NULL),(59,NULL,'John','aks@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$RBm00qqIdQw.UifFDFT6beHkdeGIV88URFUqKA8cYcBCCDMiVC232',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:16:29','2022-12-07 07:16:29',NULL,NULL,NULL),(60,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$dnfK4LvuLKzUV0mCLfyuSOZfG6tLALRyRhO9O.glPvwyV6h95Gxbq',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:18:51','2022-12-07 07:18:51',NULL,NULL,NULL),(61,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$u5CEi/LRPTVguSbK5VX5B.NaXbf0cuU.irhF91iAuwzFDhNJx6PXO',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:19:25','2022-12-07 07:19:25',NULL,NULL,NULL),(62,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$yHyRnpF499WLL4OzURzSz.OC7Ut.uS6KnpWU1peMy8BoIvM0n8dxa',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:20:22','2022-12-07 07:20:22',NULL,NULL,NULL),(63,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$mYkL4hjJb94W2ftF8EEYmOiDRze4eaKuNuiz4YQ40yTnr4w6T365i',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:21:47','2022-12-07 07:21:47',NULL,NULL,NULL),(64,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$iUI7ZR5.FKYJ8BVOvnr65u5XvYbe1vEF.hxspxV4m86S3wpp.qlG6',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:22:33','2022-12-07 07:22:33',NULL,NULL,NULL),(65,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$xo5HN6cto1P0OTK/Nmzmz.jqYhTZeByRO5EBkv0M/lyxnuzPz0WLy',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:23:05','2022-12-07 07:23:05',NULL,NULL,NULL),(66,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$idxb1QdgbshPzMf4DhMUhOYfzbOYWaJ8.0kFuCVfmXLOdsQteXUpS',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:23:57','2022-12-07 07:23:57',NULL,NULL,NULL),(67,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$ak6C7Uk0KjuRcwhKGlcrEuYAmi4q/AmvFG3IYTJ7lWQI64b91ItcK',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:24:38','2022-12-07 07:24:38',NULL,NULL,NULL),(68,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$hiuGzRS88T2cnnX7lIY5z.JTYD2Fab0x/9.QhLXFeiPY5If2Xu8im',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:26:07','2022-12-07 07:26:07',NULL,NULL,NULL),(69,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$TCzL5kzRmekNeS03sWOu6OEZxsMdOWYalaH1mzj63rcZlydgjbNoe',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:28:11','2022-12-07 07:28:11',NULL,NULL,NULL),(70,NULL,'John','arun@gmail.com','0',0,NULL,0,'8789879765',NULL,NULL,'$2y$10$8LN5E5NUZ4cGG6rrnO0E0.xBoVp1j2itIdWg04yHS7fZLHo7RhHlS',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Medium Grade Friable Chrome Ore,Low Silicone','10-150',NULL,'665758587',NULL,'AABCR4412R',NULL,'Manufacturer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,'2022-12-07 07:28:42','2022-12-07 07:28:42',NULL,NULL,NULL),(71,NULL,'John','aks@gmail.com','0',0,NULL,0,'867886756',NULL,NULL,'$2y$10$oJbJp2by12TjhdNpROoHIOufvE/jfsgOjDoicVe.CQJOgKDbIpVWC',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Low Silicone,Medium Grade Friable Chrome Ore','10-50','C','7867867676574',NULL,'AABCR4412R',NULL,'Manufacturer','true',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1670490994-9072.pdf','1670490994-9019.pdf',NULL,NULL,NULL,'1670490994-1474.pdf',NULL,NULL,NULL,'0000-00-00','0000-00-00','0000-00-00','0000-00-00',NULL,NULL,'2022-12-08 03:46:34','2022-12-08 03:46:34',NULL,NULL,NULL),(72,NULL,'John','aman@gmail.com','0',0,NULL,0,'9985348958',NULL,NULL,'$2y$10$QRdgGrFPX81OdZeRri0D6uVr8Lqmq5DhYoRUtQgcrdExSl1WFSvkm',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Low Silicone','10-50','C','3333333333333333',NULL,'AABCR4412R',NULL,'Manufacturer','true',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1670491236-5784.pdf','1670491236-1623.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00','0000-00-00','0000-00-00','0000-00-00',NULL,NULL,'2022-12-08 03:50:36','2022-12-11 23:26:11',NULL,NULL,NULL),(73,NULL,NULL,'adam@gmail.com','0',0,NULL,0,'9878787665',NULL,NULL,'$2y$10$kvThhsAEnr/2h0Zhf40yaequu/ZEUBeQTBMKgwSLzORef8vZodUCS',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','HC Ferro Chrome (Chips & Fines)','10-70','C','678676456456',NULL,'AABCR4412R',NULL,'Manufacturer & Trader','undefined',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1670590299-4633.jpg','1670590299-8102.jpg','1670590299-1172.jpg','1670590299-1383.jpg','1670590299-2856.jpg','1670590299-6938.jpg',NULL,'1670590299-1342.jpg','1670590299-5976.jpg','2022-12-16','2022-12-24','0000-00-00','2022-12-25',NULL,NULL,'2022-12-09 07:21:39','2022-12-09 07:21:39',NULL,NULL,NULL),(74,NULL,NULL,'aaa@gmail.com','0',0,NULL,0,'9586526736',NULL,NULL,'$2y$10$a878wqmp4J2i3jMVvkAJ1uAevjTDYujbO8e3yVUeCnqe/FBAaI6si',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','Low Silicone,High Grade Friable Chrome Ore','10-70','C','FSH9864654HSFJHS',NULL,'AABCR4412R',NULL,'Manufacturer','true',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1670822038-8277.jpg','1670822038-3998.jpg','1670822038-3182.jpg','1670822038-4332.jpg','1670822038-1095.jpg','1670822038-4736.jpg','1670822038-4495.jpg','1670822038-9540.jpg','1670822038-8584.jpg','2022-12-15','2022-12-16','2022-12-18','2022-12-24',NULL,NULL,'2022-12-11 23:43:58','2022-12-11 23:43:58',NULL,NULL,NULL),(75,NULL,'Tsml Sales Manager','ak1557042@gmail.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvdHNtbC1zaG9wXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjc2NjE4NjUyLCJleHAiOjE2NzY3MDUwNTIsIm5iZiI6MTY3NjYxODY1MiwianRpIjoibkhYY3QzWUxGYUpJTXB3ZiIsInN1YiI6NzUsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jLWmcIgoaJPRSxlywWxVIBg4XGP5770CtJjNPUAmcNQ',1,'8516326362',NULL,NULL,'$2y$10$Wd0uyc8NLi3HMQn2POG6ye01sCb.OTF943lFaGh8m6ZEgGctp7zt6',NULL,'GDF54G56DG','TSML SALES MANAGER',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','SM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Sales ',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-02-17 01:54:12',NULL,NULL,NULL),(76,NULL,'Tsml Plant','plant@gmail.com','0',0,NULL,0,'8516326362',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DG','TSML PLANT',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','PLANT','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Sales ',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(77,NULL,'OPT','opt@gmail.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzU3NjgyMTEsImV4cCI6MTY3NTg1NDYxMSwibmJmIjoxNjc1NzY4MjExLCJqdGkiOiJ5TXdRSHV5clhYdG5hTXU5Iiwic3ViIjo3NywicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.ZeYonwzbQeOMGGBev7RKrJxcH1U-dG1EqBPKHwgbdUk',1,'8516326397',NULL,NULL,'$2y$10$qvbwsUg6WOX4sHXTV7LLzOaEtceZzHEZA5WTb7LjFV88B2TKhuNPO',NULL,'GDF54G56DHLIO','OPT TSML',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','OPT','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','RM',NULL,NULL,'undefined','West Bengal',NULL,'East',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-02-07 05:40:11',NULL,NULL,NULL),(80,NULL,NULL,'arun0@gmail.com','0',0,NULL,0,'8989465432',NULL,NULL,'$2y$10$22knzU79f37Ll5sISUWu/.tKBejx6Q2sVVYgKKoMpRamjH0PGvqu2',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','HC Ferro Chrome (Chips & Fines),Medium Grade Friable Chrome Ore','10-80','C','27AABCR4412R1Z1',NULL,'AABCR4412R',NULL,'Trader','undefined',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1671688387-8199.pdf','1671688387-5700.png','1671688387-8544.png','1671688387-2990.pdf','1671688387-2000.pdf','1671688387-8051.jpg','1671688387-1280.png','1671688387-7745.png','1671688387-5963.png','2022-12-23','2022-12-24','2022-12-25','2022-12-25',NULL,NULL,'2022-12-22 00:23:07','2022-12-22 00:23:07',NULL,NULL,NULL),(81,NULL,NULL,'sandeepr.sharma1@tatasteel.com','0',0,NULL,0,'9238441701',NULL,NULL,'','21AAACT2803M1ZN',NULL,'TATA STEEL LIMITED','Block No.4,General Office,',NULL,NULL,NULL,'21AAACT2803M1ZN',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-22 05:00:06','2022-12-22 05:00:06','0050000000','IN','TATA STEEL LIMITED'),(82,NULL,NULL,'gajanan.kapure1@tatasteel.com','0',0,NULL,0,'9234554359',NULL,NULL,'','20AAACT2803M2ZO',NULL,'Tata Steel Limited','Bistupur, Dist: East Singhbhum',NULL,NULL,NULL,'20AAACT2803M2ZO',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-22 05:00:06','2022-12-22 05:00:06','0050000152','IN','TATA STEEL LIMITED'),(84,NULL,NULL,'arun321@gmail.com','0',0,NULL,0,'9895656653',NULL,NULL,'$2y$10$KjuPIL2Q1P1Ky2DMC0QpCu3YLC6J7ATeglmXijSqIKONmhYMoTia2',NULL,'AABCR4412R','REYNOLDS PENS INDIA PRIVATE LIMITED','Maharashtra','HC Ferro Chrome (Chips & Fines)','0-10','C','27AABCR4412R1Z1',NULL,'AABCR4412R',NULL,'Manufacturer','true',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1672393010-2112.png','1672393010-5879.png','1672393010-5585.jpg','1672393010-3198.png','1672393010-3345.pdf','1672393010-1596.png',NULL,'1672393010-4323.png','1672393010-6690.jpg','2022-12-31','2023-01-01','0000-00-00','2023-01-02',NULL,NULL,'2022-12-30 04:06:50','2022-12-30 04:06:50',NULL,NULL,NULL),(85,'0050001896','MS ABC Ltd.','siddharth.mishra1@tatasteelmining.com','0',0,NULL,0,'8767564543',NULL,NULL,'$2y$10$cgxTrhSy3FXaZ1CiEp5ZjOHH2G0DWuTcUiWlNYjfofDSEXVy6aq/y',NULL,'ORG_PAN8787','MS ABC Ltd.','ORD-ADDRESS','High,Medium,Medium Grade Friable Chrome Ore','10-150','C','6565456564564565',NULL,'KGF6735KF','SAM-CUST','Trader',NULL,'Siddharth','Mishra','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Sector 1, Bidhannagar','Kolkata','West Bengal','700064','North',NULL,'1663133805-5894.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-14 00:06:45','2022-11-02 00:50:37',NULL,NULL,NULL),(86,NULL,'TATA STEEL MINING PVT LTD','apoorv.gupta1@tatasteelmining.com','0',0,NULL,0,'99999999',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DG','TATA STEEL MINING PVT LTD',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Kam','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','TATA STEEL MINING PVT LTD','Manufacturer','true','Apoorv','Gupta',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-12-11 01:10:16',NULL,NULL,NULL),(87,NULL,'TATA STEEL MINING PVT LTD','debraj.mukherjee12@tatasteelmining.com','0',0,NULL,0,'8516326362',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DG','TATA STEEL MINING PVT LTD',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','SM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Debraj','Mukherjee ',NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(88,NULL,'TATA STEEL MINING PVT LTD','anupam.ghosh1@tatasteelmining.com','0',0,NULL,0,'8516326362',NULL,NULL,'$2y$10$29IsQYZKICYSKqng10Jn8.mF0bAqVREQM.zz3PDSodib0Dt.tJ8wu',NULL,'GDF54G56DG','TATA STEEL MINING PVT LTD',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Sales','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','TSML','Manufacturer','true','Anupam','Ghosh',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2022-10-31 23:38:13',NULL,NULL,NULL),(93,NULL,NULL,'srvmondal88@gmail.com','0',2,NULL,0,'7033025503',NULL,NULL,'$2y$10$SJOufZplV0WDHBqjSTt62OSFaD23WQnkJgk9N9PIhp7EcoziZ5KvC',NULL,'AABCT5589K','THE KARNATAKA BANK LIMITED','Andhra Pradesh','Medium Phos','10-80','Sales','37AABCT5589K2ZN',NULL,'AABCT5589K',NULL,'Manufacturer','undefined',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1674211804-2074.pdf','1674211804-7163.pdf','1674211804-5371.pdf','1674211804-5897.pdf','1674211804-8525.pdf','1674211804-6283.pdf',NULL,'1674211804-7192.pdf','1674211804-9115.pdf','2023-01-21','2023-01-22','0000-00-00','2023-01-29','2',NULL,'2023-01-20 05:20:04','2023-02-14 05:40:28',NULL,NULL,NULL),(94,NULL,NULL,'arun24@gmail.com','0',0,NULL,0,'7033025506',NULL,NULL,'$2y$10$Fwu3SmrGBCJq5mqNisx22u8Bgp57pOs19Xo8AzPRmFMKoCH//qFei',NULL,'AABCU9603R','UJJIVAN SMALL FINANCE BANK LIMITED','Bihar','Medium Phos','10-60','C','10AABCU9603R1Z2',NULL,'AABCU9603R',NULL,'Manufacturer','true',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1674650225-3155.pdf','1674650225-6412.pdf','1674650225-1047.pdf','1674650225-5548.pdf','1674650225-3199.pdf','1674650225-9924.pdf',NULL,'1674650225-9898.pdf','1674650225-9028.pdf','2023-01-27','2023-01-28','0000-00-00','2023-01-28',NULL,NULL,'2023-01-25 07:07:05','2023-01-25 07:07:05',NULL,NULL,NULL),(95,NULL,NULL,'arun23@gmail.com','0',0,NULL,0,'7033025599',NULL,NULL,'$2y$10$0QL7hADBzH3ObfSjXmP8k.F1XAESdbfIK3DA9fW3Z3G0tYqYdwmGO',NULL,'AAAAP0267H','GP PARSIK SAHAKARI BANK LIMITED','Maharashtra','Medium Phos','10-80','C','27AAAAP0267H2ZN',NULL,'AAAAP0267H',NULL,'Manufacturer','undefined',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1674650986-9569.pdf','1674650986-9130.pdf','1674650986-9744.pdf','1674650986-2874.pdf','1674650986-2459.pdf','1674650986-9699.pdf',NULL,'1674650986-6513.pdf','1674650986-7977.pdf','2023-01-27','2023-01-26','0000-00-00','2023-01-29',NULL,NULL,'2023-01-25 07:19:46','2023-01-25 07:19:46',NULL,NULL,NULL),(96,'0050001896','M/s ABC Ltd.','siddharth.mishra@tatasteelmining.com','0',0,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM1OTUsImV4cCI6MTY3NTE2OTk5NSwibmJmIjoxNjc1MDgzNTk1LCJqdGkiOiJWQUZVa1pOY0xSQXBob3NtIiwic3ViIjo5NiwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.zBC87WFIrelcQMa7kGwm83THkUsOztJuB9sYl3q2XK4',0,'8767564543',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'ORG_PAN8787','M/s ABC Ltd.','ORD-ADDRESS','High,Medium,Medium Grade Friable Chrome Ore','10-150','C','6565456564564565',NULL,'KGF6735KF','SAM-CUST','Trader',NULL,'Siddharth','Mishra','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Sector 1, Bidhannagar','Kolkata','West Bengal','700064','North',NULL,'1663133805-5894.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-14 00:06:45','2023-01-30 07:29:55',NULL,NULL,NULL),(97,NULL,'Apoorv Gupta','apoorv.gupta@tatasteelmining.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM2MDksImV4cCI6MTY3NTE3MDAwOSwibmJmIjoxNjc1MDgzNjA5LCJqdGkiOiJHNmhzWVNqVVhZVU1nck5SIiwic3ViIjo5NywicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.jCd_Qxh9jihf_4_vidIHG1zrRNmpIWUGmgvHARuuWSI',0,'99999999',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'GDF54G56DG','Apoorv Gupta',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Kam','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','TATA STEEL MINING PVT LTD','Manufacturer','true','Apoorv','Gupta',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-01-30 07:30:09',NULL,NULL,NULL),(98,NULL,'Debraj Mukherjee','debraj.mukherjee1@tatasteelmining.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM2ODAsImV4cCI6MTY3NTE3MDA4MCwibmJmIjoxNjc1MDgzNjgwLCJqdGkiOiJwSGdPZDVWY3hFNExzTE9TIiwic3ViIjo5OCwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.jJ678jt8rbLLglbtvlpAdDwHp-L4gBuWCuuHFlLg0yI',0,'8516326362',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'GDF54G56DG','TSML SALES MANAGER',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','SM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Debraj','Mukherjee ',NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-01-30 07:31:20',NULL,NULL,NULL),(99,NULL,'Anupam Ghosh','anupam.ghosh@tatasteelmining.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM2OTUsImV4cCI6MTY3NTE3MDA5NSwibmJmIjoxNjc1MDgzNjk1LCJqdGkiOiJOR2I1ZXRRamJFRHpXQkhhIiwic3ViIjo5OSwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.d-X40vVVqZticXVKbol9VORywVhFTWDxKKzqRyUQjfE',0,'8516326362',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'GDF54G56DG','TSML',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Sales','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','TSML','Manufacturer','true','Anupam','Ghosh',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-01-30 07:31:35',NULL,NULL,NULL),(100,'0050001827','M/s ABC Ltd.','sanchita.bandyopadhyay@mjunction.in','0',0,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM3MDUsImV4cCI6MTY3NTE3MDEwNSwibmJmIjoxNjc1MDgzNzA1LCJqdGkiOiJkOEVBakJkY1Z1Vkt2M2NoIiwic3ViIjoxMDAsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.AjetVMRGkxgj3OqPtJdt_VvSOkeGCepBoTUgXdWBVMk',0,'8767564543',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'ORG_PAN8787','M/s ABC Ltd.','ORD-ADDRESS','High,Medium,Medium Grade Friable Chrome Ore','10-150','C','6565456564564565',NULL,'KGF6735KF','SAM-CUST','Trader',NULL,'Siddharth','Mishra','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Sector 1, Bidhannagar','Kolkata','West Bengal','700064','North',NULL,'1663133805-5894.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-14 00:06:45','2023-01-30 07:31:45',NULL,NULL,NULL),(101,NULL,'Bhaskar Chakraborty','bhaskar.chakraborty@mjunction.in','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM3MTksImV4cCI6MTY3NTE3MDExOSwibmJmIjoxNjc1MDgzNzE5LCJqdGkiOiJ2UjRlVEFRbWhvSlVKaUJvIiwic3ViIjoxMDEsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.0da16GdcX5p5HXhWyxhfzW6kqoWy2rkKwmGD1KsKKLw',0,'99999999',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'GDF54G56DG','Bhaskar Chakraborty',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Kam','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','TATA STEEL MINING PVT LTD','Manufacturer','true','Bhaskar','Chakraborty',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-01-30 07:31:59',NULL,NULL,NULL),(102,NULL,'Rahul Maury','rahul.maurya@mjunction.in','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM3MzMsImV4cCI6MTY3NTE3MDEzMywibmJmIjoxNjc1MDgzNzMzLCJqdGkiOiJoR0ZEaUZsR0VQaDJObmlTIiwic3ViIjoxMDIsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.QzAh5D-eCTqPmii2oxIEYN0_F7iomo0c-rtJqZmb3ek',0,'8516326362',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'GDF54G56DG','TSML',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Sales','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','TSML','Manufacturer','true','Rahul','Maury',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-01-30 07:32:13',NULL,NULL,NULL),(103,NULL,'Rahul K Maurya','rahulkmaurya@gmail.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzUwODM3NDQsImV4cCI6MTY3NTE3MDE0NCwibmJmIjoxNjc1MDgzNzQ0LCJqdGkiOiI3UWN0Rk5lMjhQQ3piOXFxIiwic3ViIjoxMDMsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.IyVYg2ZNf-VLXgdcuXImPkP3zSdj1JXc5P_dLtWI3zQ',0,'8516326362',NULL,NULL,'$2y$10$LJghI68FwwJK2yMPNFrg9OTlsn5itxURoKlsqNCqbunfdEBwYKsMq',NULL,'GDF54G56DG','TSML SALES MANAGER',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','SM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Rahul K','Maurya ',NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-01-30 07:32:24',NULL,NULL,NULL),(106,NULL,'','amitbeas178@gmail.com','0',2,NULL,0,'7033302503','448854',NULL,'$2y$10$hxUp.bsbry0PKJjZHGQl6eVDTMlxPq.oiKuOHI608OHvPkkl8clAu',NULL,'AADCB2230M','M/S BILT GRAPHIC PAPER PRODUCTS LIMITED','Andhra Pradesh','Medium Phos','10-70','Kam','37AADCB2230M2ZR1',NULL,'AADCB2230M',NULL,'Manufacturer','undefined','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1675073492-6679.pdf','1675073492-9740.pdf','1675073492-1477.pdf','1675073492-7545.pdf','1675073492-9053.pdf','1675073492-7831.pdf',NULL,'1675073492-7430.pdf','1675073492-5773.pdf','2023-01-26','2023-02-02','0000-00-00','2023-01-28',NULL,NULL,'2023-01-30 04:41:32','2023-01-30 06:56:01',NULL,NULL,NULL),(107,'00500025478','M/S ABC Ltd.','rahulpentester@gmail.com','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvbWplLXNob3BcL2FwaVwvbG9naW4iLCJpYXQiOjE2NzU4MzcxOTMsImV4cCI6MTY3NTkyMzU5MywibmJmIjoxNjc1ODM3MTkzLCJqdGkiOiJmemx5SDRFczl0STVXTXVlIiwic3ViIjoxMDcsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.e75IeCS8oW-KF60X29JeJgUVLqkSTL6F0lXYTjzErCs',1,'7038350395',NULL,NULL,'$2y$10$dbc6iOs..2j/EtM6FqjoOOG6CYp9nQm7NaIi8keqX3FKWNArpG1kq',NULL,'ORG_PAN8787','M/s ABC Ltd.','ORD-ADDRESS','High,Medium,Medium Grade Friable Chrome Ore','10-150','C','6565456564564565',NULL,'KGF6735KF','M/s ABC Ltd.','Trader',NULL,'Rahul','Pentester','HCM4+WJX, Labony, Salt Lake, 3rd Ave','Sector 1, Bidhannagar','Kolkata','West Bengal','700064','North',NULL,'1663133805-5894.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','','2022-09-14 00:06:45','2023-02-08 00:49:53',NULL,NULL,NULL),(108,NULL,'Finisher Kam','finisher0987@gmail.com','0',2,NULL,0,'8248335181',NULL,NULL,'$2y$10$WJ9hefbk2vDOj8G7Ww1sueHLpHKvSKwyhwqxrJIHKexZUc.y9a58u',NULL,'GDF54G56DG','TATA STEEL MINING PVT LTD',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Kam','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','FINISHER-CAM','Manufacturer','true','FINISHER','LAST',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,'','2022-10-26 06:09:30','2023-02-08 00:01:14',NULL,NULL,NULL),(109,NULL,'Tsml Sales Manager','rahul.p.siraskar@in.ey.com','0',2,NULL,0,'8928561251',NULL,NULL,'$2y$10$WJ9hefbk2vDOj8G7Ww1sueHLpHKvSKwyhwqxrJIHKexZUc.y9a58u',NULL,'GDF54G56DG','TSML SALES MANAGER',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','SM','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG',NULL,'Manufacturer','true','Tsml','Sales Head',NULL,NULL,'undefined','West Bengal',NULL,NULL,NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,NULL,'2022-10-26 06:09:30','2023-02-08 00:47:28',NULL,NULL,NULL),(110,NULL,'Sam33 Kam','arun.sarkar@beas.co.in','0',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmVhcy5pblwvdHNtbC1zaG9wXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjc2NjE2NjI5LCJleHAiOjE2NzY3MDMwMjksIm5iZiI6MTY3NjYxNjYyOSwianRpIjoiUXZYS2w4RlV6MVFCVHNaTCIsInN1YiI6MTEwLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.dyql2UAUJEPr7CUrGDWIBjNL3XtXMFW-QSDl_WtGltE',1,'99999999',NULL,NULL,'$2y$10$DPg8X2r4IoS6P32RqyLI4O.qnQy1ts/FIGMUvOInV1eKbASIVqeUC',NULL,'GDF54G56DG','TATA STEEL MINING PVT LTD',NULL,'Medium,Low Silicone,Medium Grade Friable Chrome Ore','10-150','Kam','GHDHG56GDFGDHGDFG',NULL,'GDFG66G6GGGG','SAM-CAM','Manufacturer','true','ALOK','LAST',NULL,NULL,'undefined','West Bengal',NULL,'North',NULL,'1666784370-1632.png','1666784370-8939.png','1666784370-5066.png','1666784370-2308.png','1666784370-8155.png','1666784370-5911.jpg','1666784370-9715.png','1666784370-9583.jpg','1666784370-6856.png','2022-10-28','2022-10-29',NULL,NULL,NULL,'','2022-10-26 06:09:30','2023-02-17 01:20:29',NULL,NULL,NULL);
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

-- Dump completed on 2023-02-17 17:04:16
