-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: airtnt
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `addresses`
--

USE heroku_dfddfa200348a6a;

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apartment_no_street` varchar(255) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9fkb8qaj71tiyr9htkmn7r8y5` (`city_id`),
  KEY `FKn3sth7s3kur1rafwbbrqqnswt` (`country_id`),
  KEY `FKqcujk6a19pr29agrlk18h2c9y` (`state_id`),
  CONSTRAINT `FK9fkb8qaj71tiyr9htkmn7r8y5` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `FKn3sth7s3kur1rafwbbrqqnswt` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `FKqcujk6a19pr29agrlk18h2c9y` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (2,'121/16/20 DX06',8893,216,2),(3,'121/16/5 DX06',8893,216,2),(4,'121/16/21 DX06',8893,216,2),(5,'121/16/22 DX06',8893,216,2),(6,'121/16/23 DX06',8893,216,2),(7,'121/16/24 DX06',8893,216,2),(8,'121/16/24 DX06',8893,216,2);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amentities`
--

DROP TABLE IF EXISTS `amentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `amentities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `updated_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon_image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `amtcategory_id` int DEFAULT NULL,
  `favorite` bit(1) NOT NULL,
  `prominent` bit(1) NOT NULL,
  `safe` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9n0dovk7hr1b8wuo3lefu09mh` (`name`),
  KEY `FKmguva27b8e5am0be8ghv4rn5k` (`amtcategory_id`),
  CONSTRAINT `FKmguva27b8e5am0be8ghv4rn5k` FOREIGN KEY (`amtcategory_id`) REFERENCES `amentity_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amentities`
--

LOCK TABLES `amentities` WRITE;
/*!40000 ALTER TABLE `amentities` DISABLE KEYS */;
INSERT INTO `amentities` VALUES (1,'2021-09-18 15:49:31.534000',1,'2021-09-18 16:16:03.697000','Khăn tắm, khăn trải giường, xà phòng và giấy vệ sinh','needed_amentities.svg','Tiện nghi thiết yếu',4,_binary '\0',_binary '\0',_binary '\0'),(2,'2021-09-18 15:49:31.547000',1,'2021-09-18 15:49:31.547000',NULL,'hairdryer.svg','Máy sấy tóc',1,_binary '\0',_binary '\0',_binary '\0'),(3,'2021-09-18 15:49:31.549000',1,'2021-09-18 15:49:31.549000',NULL,'shampoo.svg','Dầu gội đầu',1,_binary '\0',_binary '\0',_binary '\0'),(4,'2021-09-18 15:49:31.551000',1,'2021-09-18 15:49:31.551000',NULL,'tv.svg','TV',5,_binary '',_binary '\0',_binary '\0'),(5,'2021-09-18 15:49:31.553000',1,'2021-09-18 15:49:31.553000',NULL,'air_conditioner.svg','Điều hòa nhiệt độ',6,_binary '',_binary '\0',_binary '\0'),(6,'2021-09-18 15:49:31.556000',1,'2021-09-18 15:49:31.556000',NULL,'heating_system.svg','Hệ thống sưởi',6,_binary '\0',_binary '\0',_binary '\0'),(7,'2021-09-18 15:49:52.006000',1,'2021-09-18 15:49:52.006000',NULL,'camera.svg','Camera an ninh trong nhà',7,_binary '\0',_binary '\0',_binary '\0'),(8,'2021-09-18 15:49:52.031000',1,'2021-09-18 15:49:52.031000',NULL,'stove.svg','Bếp',7,_binary '',_binary '\0',_binary '\0'),(9,'2021-09-18 15:49:52.036000',1,'2021-09-18 15:49:52.036000',NULL,'washing_machine.svg','Máy giặt',7,_binary '',_binary '\0',_binary '\0'),(10,'2021-09-18 15:49:52.041000',1,'2021-09-18 16:16:03.684000','Chỗ ở này có thể không có máy báo khói. Hãy liên hệ với chủ nhà nếu bạn có bất kỳ câu hỏi nào.','may_bao_khoi.svg','Máy báo khói',7,_binary '\0',_binary '\0',_binary ''),(11,'2021-09-18 15:49:52.045000',1,'2021-09-18 16:16:03.695000','Chỗ ở này có thể không có máy phát hiện khí CO. Hãy liên hệ với chủ nhà nếu bạn có bất kỳ câu hỏi nào.','may_phat_hien_khoi_CO.svg','Máy phát hiện khói CO',7,_binary '\0',_binary '\0',_binary ''),(12,'2021-09-18 15:49:52.050000',1,'2021-09-18 15:49:52.050000',NULL,'private_entrance.svg','Lối vào riêng',7,_binary '\0',_binary '\0',_binary '\0'),(13,'2021-09-18 16:04:12.211000',1,'2021-09-18 16:16:03.699000','Cho phép ở từ 28 ngày trở lên','long_stay_allowed.svg','Cho phép ở dài hạn',5,_binary '\0',_binary '\0',_binary '\0'),(14,'2021-09-18 16:04:12.229000',1,'2021-09-18 16:16:03.700000','Có sẵn trong toàn bộ nhà/phòng cho thuê','wifi.svg','Wifi',5,_binary '',_binary '\0',_binary '\0'),(15,'2021-10-27 21:17:48.000000',1,NULL,NULL,'pool.svg','Bể bơi',NULL,_binary '\0',_binary '',_binary '\0'),(16,'2021-10-27 21:26:42.000000',1,NULL,NULL,'yard.svg','Sân',NULL,_binary '\0',_binary '',_binary '\0'),(17,'2021-10-27 21:26:42.000000',1,NULL,NULL,'bathtub.svg','Bồn tắm nước nóng',NULL,_binary '\0',_binary '',_binary '\0'),(18,'2021-10-27 21:26:42.000000',1,NULL,NULL,'lo_nuong_BBQ.svg','Lò nướng BBQ',NULL,_binary '\0',_binary '',_binary '\0'),(19,'2021-10-27 21:26:42.000000',1,NULL,NULL,'bep_dot_lua_trai.svg','Bếp đốt lửa trại',NULL,_binary '\0',_binary '',_binary '\0'),(20,'2021-10-27 21:26:42.000000',1,NULL,NULL,'ban_bi_da.svg','Bàn bi-da',NULL,_binary '\0',_binary '',_binary '\0'),(21,'2021-10-27 21:26:42.000000',1,NULL,NULL,'fireplace.svg','Lò sưởi trong nhà',NULL,_binary '\0',_binary '',_binary '\0'),(22,'2021-10-27 21:26:42.000000',1,NULL,NULL,'area_eat_outside.svg','Khu vực ăn uống ngoài trời',NULL,_binary '\0',_binary '',_binary '\0'),(23,'2021-10-27 21:26:42.000000',1,NULL,NULL,'gym_equipment.svg','Thiết bị tập thể dục',NULL,_binary '\0',_binary '',_binary '\0'),(24,'2021-10-28 10:51:39.057000',1,'2021-10-28 10:51:39.057000',NULL,'free_parking_lot.svg','Chỗ đỗ xe miễn phí ở nơi ở',NULL,_binary '',_binary '\0',_binary '\0'),(25,'2021-10-28 10:51:39.074000',1,'2021-10-28 10:51:39.074000',NULL,'non_free_parking_lot.svg','Chỗ đỗ xe có thu phí trong khuôn viên',NULL,_binary '',_binary '\0',_binary '\0'),(26,'2021-10-28 10:51:39.076000',1,'2021-10-28 10:51:39.076000',NULL,'private_space_for_work.svg','Không gian riêng để làm việc',NULL,_binary '',_binary '\0',_binary '\0'),(27,'2021-10-28 10:51:39.078000',1,'2021-10-28 10:51:39.078000',NULL,'voi_sen_tam_ngoai_troi.svg','Vòi sen tắm ngoài trời',NULL,_binary '',_binary '\0',_binary '\0'),(28,'2021-11-15 10:59:01.000000',1,NULL,NULL,'binh_chua_chay.svg','Bình chữa cháy',NULL,_binary '\0',_binary '\0',_binary ''),(29,'2021-11-15 11:01:32.000000',1,NULL,NULL,'aid_kit.svg','Bộ sơ cứu',NULL,_binary '\0',_binary '\0',_binary '');
/*!40000 ALTER TABLE `amentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amentity_categories`
--

DROP TABLE IF EXISTS `amentity_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `amentity_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g9ojc42itdmq11ppfepjcbnvk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amentity_categories`
--

LOCK TABLES `amentity_categories` WRITE;
/*!40000 ALTER TABLE `amentity_categories` DISABLE KEYS */;
INSERT INTO `amentity_categories` VALUES (1,'Phòng tắm',''),(2,'Phòng ngủ và giặt ủi',''),(3,'Giải trí',''),(4,'Hệ thống sưởi và làm mát',''),(5,'Internet và văn phòng',''),(6,'Dịch vụ',''),(7,'Không bao gồm',''),(8,'Tiện nghi nổi bật',''),(9,'Tiện nghi yêu thích',NULL),(10,'Tiện nghi đảm bảo an toàn',NULL);
/*!40000 ALTER TABLE `amentity_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `updated_at` datetime(6) DEFAULT NULL,
  `booking_date` datetime(6) DEFAULT NULL,
  `cancel_date` datetime(6) DEFAULT NULL,
  `checkin_date` datetime(6) DEFAULT NULL,
  `checkout_date` datetime(6) DEFAULT NULL,
  `is_complete` bit(1) NOT NULL,
  `is_refund` tinyint(1) DEFAULT '0',
  `number_of_days` smallint DEFAULT '0',
  `price_per_day` decimal(20,2) NOT NULL,
  `refund_paid` decimal(20,2) DEFAULT '0.00',
  `site_fee` decimal(20,2) NOT NULL,
  `total_fee` decimal(20,2) DEFAULT '0.00',
  `customer_id` int NOT NULL,
  `room_id` int NOT NULL,
  `review_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKib6gjgj2e9binkktxmm175bmm` (`customer_id`),
  KEY `FKrgoycol97o21kpjodw1qox4nc` (`room_id`),
  KEY `FK5kh29npp97yyxsxlouuhb35vr` (`review_id`),
  CONSTRAINT `FK5kh29npp97yyxsxlouuhb35vr` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`),
  CONSTRAINT `FKib6gjgj2e9binkktxmm175bmm` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKrgoycol97o21kpjodw1qox4nc` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2021-11-29 18:05:55.758000',1,'2021-11-29 18:05:55.758000','2021-11-29 18:05:55.742566',NULL,'2021-12-05 00:00:00.000000','2021-12-25 00:00:00.000000',_binary '',0,21,645000.00,0.00,677250.00,13545000.00,17,4,NULL),(2,'2021-11-30 10:45:05.130000',1,'2021-11-30 10:45:05.130000','2021-11-30 10:45:05.121269',NULL,'2021-12-29 00:00:00.000000','2021-12-31 00:00:00.000000',_binary '',0,3,645000.00,0.00,96750.00,1935000.00,17,4,NULL),(3,'2021-12-29 00:00:00.000000',1,NULL,'2020-12-29 00:00:00.000000',NULL,'2022-12-29 00:00:00.000000','2022-12-29 00:00:00.000000',_binary '',0,6,645000.00,0.00,96750.00,100000.00,17,4,NULL),(4,'2021-11-30 21:53:25.173000',1,'2021-11-30 21:53:25.173000','2021-11-30 21:53:25.158439',NULL,'2021-12-01 00:00:00.000000','2021-12-04 00:00:00.000000',_binary '',0,4,645000.00,0.00,129000.00,2580000.00,17,4,NULL),(6,'2021-12-04 00:00:00.000000',1,NULL,'2021-10-30 21:53:25.158439',NULL,'2021-12-01 00:00:00.000000','2021-12-04 00:00:00.000000',_binary '',0,43,645000.00,0.00,129000.00,2580000.00,17,4,NULL),(7,'2021-12-04 00:00:00.000000',1,NULL,'2021-01-30 21:53:25.158439',NULL,'2021-12-01 00:00:00.000000','2021-12-04 00:00:00.000000',_binary '',0,43,645000.00,0.00,129000.00,2580000.00,17,4,NULL),(8,'2021-12-04 00:00:00.000000',1,NULL,'2021-03-30 21:53:25.158439',NULL,'2021-12-01 00:00:00.000000','2021-12-04 00:00:00.000000',_binary '',0,43,645000.00,0.00,129000.00,2580000.00,17,4,NULL),(9,'2021-12-04 00:00:00.000000',1,NULL,'2021-04-30 21:53:25.158439',NULL,'2021-12-01 00:00:00.000000','2021-12-04 00:00:00.000000',_binary '',0,43,645000.00,0.00,129000.00,25800000.00,2,4,NULL),(10,'2021-12-04 00:00:00.000000',1,NULL,'2021-04-30 21:53:25.158439',NULL,'2021-12-01 00:00:00.000000','2021-12-04 00:00:00.000000',_binary '',0,43,645000.00,0.00,129000.00,200000.00,17,4,NULL),(11,'2021-12-01 11:05:56.433000',1,'2021-12-03 15:01:35.631000','2021-12-01 11:05:56.415072',NULL,'2022-02-10 00:00:00.000000','2022-03-09 00:00:00.000000',_binary '',0,28,645000.00,0.00,903000.00,18060000.00,17,4,NULL),(12,'2021-12-01 11:12:48.320000',1,'2021-12-01 11:12:48.320000','2021-12-01 11:12:48.316831',NULL,'2022-04-01 00:00:00.000000','2022-04-09 00:00:00.000000',_binary '',0,9,645000.00,0.00,290250.00,5805000.00,17,4,NULL),(13,'2021-12-01 11:13:33.674000',1,'2021-12-01 11:13:33.674000','2021-12-01 11:13:33.673816',NULL,'2021-12-26 00:00:00.000000','2021-12-28 00:00:00.000000',_binary '',0,3,645000.00,0.00,96750.00,1935000.00,17,4,NULL),(14,'2021-12-01 11:28:30.509000',1,'2021-12-01 11:28:30.509000','2021-12-01 11:28:30.503448',NULL,'2021-12-01 00:00:00.000000','2021-12-02 00:00:00.000000',_binary '',0,2,364.00,0.00,36.40,728.00,17,1,NULL),(15,'2021-12-01 11:28:59.947000',1,'2021-12-01 11:28:59.947000','2021-12-01 11:28:59.946423',NULL,'2021-12-03 00:00:00.000000','2021-12-17 00:00:00.000000',_binary '',0,15,364.00,0.00,273.00,5460.00,17,1,NULL),(16,'2021-12-01 18:19:28.914000',1,'2021-12-02 16:19:44.429000','2021-12-01 18:19:28.903685','2021-12-02 16:19:44.428886','2022-03-14 00:00:00.000000','2022-03-26 00:00:00.000000',_binary '\0',1,13,645000.00,7965750.00,419250.00,8385000.00,17,4,NULL),(17,'2021-12-01 23:13:59.137000',1,'2021-12-02 16:17:31.422000','2021-12-01 23:13:59.134090','2021-12-02 16:17:31.421630','2021-12-18 00:00:00.000000','2021-12-31 00:00:00.000000',_binary '',1,14,364.00,4841.20,254.80,5096.00,17,1,NULL),(19,'2021-12-05 11:53:50.958000',1,'2021-12-05 11:58:42.008000','2021-12-05 11:53:50.954661','2021-12-05 11:58:41.959021','2022-02-01 00:00:00.000000','2022-02-19 00:00:00.000000',_binary '\0',1,19,364.00,6916.00,345.80,6916.00,28,1,NULL),(20,'2021-12-05 12:06:29.166000',1,'2021-12-05 12:06:29.166000','2021-12-05 12:06:29.162150',NULL,'2022-02-01 00:00:00.000000','2022-02-05 00:00:00.000000',_binary '\0',0,5,364.00,0.00,91.00,1820.00,28,1,NULL),(21,'2021-12-05 13:06:52.685000',1,'2021-12-05 13:06:52.685000','2021-12-05 13:06:52.684658',NULL,'2022-02-01 00:00:00.000000','2022-02-10 00:00:00.000000',_binary '\0',0,10,645000.00,0.00,322500.00,6450000.00,28,4,NULL);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `updated_at` datetime(6) DEFAULT NULL,
  `icon` text NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2021-09-18 16:56:11.537000',1,'2021-09-18 16:56:11.537000','ntc.jpg','Nhà trên cây'),(2,'2021-09-18 16:56:11.561000',1,'2021-09-18 16:56:11.561000','hbtv.jpg','Hồ bơi tuyệt vời'),(3,'2021-09-18 16:56:11.566000',1,'2021-09-18 16:56:11.566000','kz.jpg','Kezhan'),(4,'2021-09-18 16:56:11.572000',1,'2021-09-18 16:56:11.572000','nc.jpg','Nhà container'),(5,'2021-09-18 16:56:11.576000',1,'2021-09-18 16:56:11.576000','hb.jpg','Hướng biển'),(6,'2021-09-18 16:56:11.581000',1,'2021-09-18 16:56:11.581000','rk.jpg','Ryokan'),(7,'2021-09-18 16:56:11.585000',1,'2021-09-18 16:56:11.585000','nn.jpg','Nhà nhỏ'),(8,'2021-09-18 16:56:11.590000',1,'2021-09-18 16:56:11.590000','d.jpg','Đảo'),(9,'2021-09-18 16:56:11.594000',1,'2021-09-18 16:56:11.594000','cb.jpg','Cabin'),(10,'2021-09-18 16:56:11.599000',1,'2021-09-18 16:56:11.599000','nmv.jpg','Nhà mái vòm'),(11,'2021-09-18 16:56:11.604000',1,'2021-09-18 16:56:11.604000','tt.jpg','Trang trại'),(12,'2021-09-18 16:56:11.608000',1,'2021-09-18 16:56:11.608000','ld.jpg','Lâu đài');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsu54e1tlhaof4oklvv7uphsli` (`state_id`),
  CONSTRAINT `FKsu54e1tlhaof4oklvv7uphsli` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9078 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (8372,'Quận Ba Đình',72),(8373,'Quận Hoàn Kiếm',72),(8374,'Quận Tây Hồ',72),(8375,'Quận Long Biên',72),(8376,'Quận Cầu Giấy',72),(8377,'Quận Đống Đa',72),(8378,'Quận Hai Bà Trưng',72),(8379,'Quận Hoàng Mai',72),(8380,'Quận Thanh Xuân',72),(8381,'Huyện Sóc Sơn',72),(8382,'Huyện Đông Anh',72),(8383,'Huyện Gia Lâm',72),(8384,'Quận Nam Từ Liêm',72),(8385,'Huyện Thanh Trì',72),(8386,'Quận Bắc Từ Liêm',72),(8387,'Huyện Mê Linh',72),(8388,'Quận Hà Đông',72),(8389,'Thị xã Sơn Tây',72),(8390,'Huyện Ba Vì',72),(8391,'Huyện Phúc Thọ',72),(8392,'Huyện Đan Phượng',72),(8393,'Huyện Hoài Đức',72),(8394,'Huyện Quốc Oai',72),(8395,'Huyện Thạch Thất',72),(8396,'Huyện Chương Mỹ',72),(8397,'Huyện Thanh Oai',72),(8398,'Huyện Thường Tín',72),(8399,'Huyện Phú Xuyên',72),(8400,'Huyện Ứng Hòa',72),(8401,'Huyện Mỹ Đức',72),(8402,'Thành phố Hà Giang',73),(8403,'Huyện Đồng Văn',73),(8404,'Huyện Mèo Vạc',73),(8405,'Huyện Yên Minh',73),(8406,'Huyện Quản Bạ',73),(8407,'Huyện Vị Xuyên',73),(8408,'Huyện Bắc Mê',73),(8409,'Huyện Hoàng Su Phì',73),(8410,'Huyện Xín Mần',73),(8411,'Huyện Bắc Quang',73),(8412,'Huyện Quang Bình',73),(8413,'Thành phố Cao Bằng',74),(8414,'Huyện Bảo Lâm',74),(8415,'Huyện Bảo Lạc',74),(8416,'Huyện Hà Quảng',74),(8417,'Huyện Trùng Khánh',74),(8418,'Huyện Hạ Lang',74),(8419,'Huyện Quảng Hòa',74),(8420,'Huyện Hoà An',74),(8421,'Huyện Nguyên Bình',74),(8422,'Huyện Thạch An',74),(8423,'Thành Phố Bắc Kạn',75),(8424,'Huyện Pác Nặm',75),(8425,'Huyện Ba Bể',75),(8426,'Huyện Ngân Sơn',75),(8427,'Huyện Bạch Thông',75),(8428,'Huyện Chợ Đồn',75),(8429,'Huyện Chợ Mới',75),(8430,'Huyện Na Rì',75),(8431,'Thành phố Tuyên Quang',76),(8432,'Huyện Lâm Bình',76),(8433,'Huyện Na Hang',76),(8434,'Huyện Chiêm Hóa',76),(8435,'Huyện Hàm Yên',76),(8436,'Huyện Yên Sơn',76),(8437,'Huyện Sơn Dương',76),(8438,'Thành phố Lào Cai',77),(8439,'Huyện Bát Xát',77),(8440,'Huyện Mường Khương',77),(8441,'Huyện Si Ma Cai',77),(8442,'Huyện Bắc Hà',77),(8443,'Huyện Bảo Thắng',77),(8444,'Huyện Bảo Yên',77),(8445,'Thị xã Sa Pa',77),(8446,'Huyện Văn Bàn',77),(8447,'Thành phố Điện Biên Phủ',78),(8448,'Thị xã Mường Lay',78),(8449,'Huyện Mường Nhé',78),(8450,'Huyện Mường Chà',78),(8451,'Huyện Tủa Chùa',78),(8452,'Huyện Tuần Giáo',78),(8453,'Huyện Điện Biên',78),(8454,'Huyện Điện Biên Đông',78),(8455,'Huyện Mường Ảng',78),(8456,'Huyện Nậm Pồ',78),(8457,'Thành phố Lai Châu',79),(8458,'Huyện Tam Đường',79),(8459,'Huyện Mường Tè',79),(8460,'Huyện Sìn Hồ',79),(8461,'Huyện Phong Thổ',79),(8462,'Huyện Than Uyên',79),(8463,'Huyện Tân Uyên',79),(8464,'Huyện Nậm Nhùn',79),(8465,'Thành phố Sơn La',80),(8466,'Huyện Quỳnh Nhai',80),(8467,'Huyện Thuận Châu',80),(8468,'Huyện Mường La',80),(8469,'Huyện Bắc Yên',80),(8470,'Huyện Phù Yên',80),(8471,'Huyện Mộc Châu',80),(8472,'Huyện Yên Châu',80),(8473,'Huyện Mai Sơn',80),(8474,'Huyện Sông Mã',80),(8475,'Huyện Sốp Cộp',80),(8476,'Huyện Vân Hồ',80),(8477,'Thành phố Yên Bái',81),(8478,'Thị xã Nghĩa Lộ',81),(8479,'Huyện Lục Yên',81),(8480,'Huyện Văn Yên',81),(8481,'Huyện Mù Căng Chải',81),(8482,'Huyện Trấn Yên',81),(8483,'Huyện Trạm Tấu',81),(8484,'Huyện Văn Chấn',81),(8485,'Huyện Yên Bình',81),(8486,'Thành phố Hòa Bình',82),(8487,'Huyện Đà Bắc',82),(8488,'Huyện Lương Sơn',82),(8489,'Huyện Kim Bôi',82),(8490,'Huyện Cao Phong',82),(8491,'Huyện Tân Lạc',82),(8492,'Huyện Mai Châu',82),(8493,'Huyện Lạc Sơn',82),(8494,'Huyện Yên Thủy',82),(8495,'Huyện Lạc Thủy',82),(8496,'Thành phố Thái Nguyên',83),(8497,'Thành phố Sông Công',83),(8498,'Huyện Định Hóa',83),(8499,'Huyện Phú Lương',83),(8500,'Huyện Đồng Hỷ',83),(8501,'Huyện Võ Nhai',83),(8502,'Huyện Đại Từ',83),(8503,'Thị xã Phổ Yên',83),(8504,'Huyện Phú Bình',83),(8505,'Thành phố Lạng Sơn',84),(8506,'Huyện Tràng Định',84),(8507,'Huyện Bình Gia',84),(8508,'Huyện Văn Lãng',84),(8509,'Huyện Cao Lộc',84),(8510,'Huyện Văn Quan',84),(8511,'Huyện Bắc Sơn',84),(8512,'Huyện Hữu Lũng',84),(8513,'Huyện Chi Lăng',84),(8514,'Huyện Lộc Bình',84),(8515,'Huyện Đình Lập',84),(8516,'Thành phố Hạ Long',85),(8517,'Thành phố Móng Cái',85),(8518,'Thành phố Cẩm Phả',85),(8519,'Thành phố Uông Bí',85),(8520,'Huyện Bình Liêu',85),(8521,'Huyện Tiên Yên',85),(8522,'Huyện Đầm Hà',85),(8523,'Huyện Hải Hà',85),(8524,'Huyện Ba Chẽ',85),(8525,'Huyện Vân Đồn',85),(8526,'Thị xã Đông Triều',85),(8527,'Thị xã Quảng Yên',85),(8528,'Huyện Cô Tô',85),(8529,'Thành phố Bắc Giang',86),(8530,'Huyện Yên Thế',86),(8531,'Huyện Tân Yên',86),(8532,'Huyện Lạng Giang',86),(8533,'Huyện Lục Nam',86),(8534,'Huyện Lục Ngạn',86),(8535,'Huyện Sơn Động',86),(8536,'Huyện Yên Dũng',86),(8537,'Huyện Việt Yên',86),(8538,'Huyện Hiệp Hòa',86),(8539,'Thành phố Việt Trì',87),(8540,'Thị xã Phú Thọ',87),(8541,'Huyện Đoan Hùng',87),(8542,'Huyện Hạ Hoà',87),(8543,'Huyện Thanh Ba',87),(8544,'Huyện Phù Ninh',87),(8545,'Huyện Yên Lập',87),(8546,'Huyện Cẩm Khê',87),(8547,'Huyện Tam Nông',87),(8548,'Huyện Lâm Thao',87),(8549,'Huyện Thanh Sơn',87),(8550,'Huyện Thanh Thuỷ',87),(8551,'Huyện Tân Sơn',87),(8552,'Thành phố Vĩnh Yên',88),(8553,'Thành phố Phúc Yên',88),(8554,'Huyện Lập Thạch',88),(8555,'Huyện Tam Dương',88),(8556,'Huyện Tam Đảo',88),(8557,'Huyện Bình Xuyên',88),(8558,'Huyện Yên Lạc',88),(8559,'Huyện Vĩnh Tường',88),(8560,'Huyện Sông Lô',88),(8561,'Thành phố Bắc Ninh',89),(8562,'Huyện Yên Phong',89),(8563,'Huyện Quế Võ',89),(8564,'Huyện Tiên Du',89),(8565,'Thị xã Từ Sơn',89),(8566,'Huyện Thuận Thành',89),(8567,'Huyện Gia Bình',89),(8568,'Huyện Lương Tài',89),(8569,'Thành phố Hải Dương',90),(8570,'Thành phố Chí Linh',90),(8571,'Huyện Nam Sách',90),(8572,'Thị xã Kinh Môn',90),(8573,'Huyện Kim Thành',90),(8574,'Huyện Thanh Hà',90),(8575,'Huyện Cẩm Giàng',90),(8576,'Huyện Bình Giang',90),(8577,'Huyện Gia Lộc',90),(8578,'Huyện Tứ Kỳ',90),(8579,'Huyện Ninh Giang',90),(8580,'Huyện Thanh Miện',90),(8581,'Quận Hồng Bàng',91),(8582,'Quận Ngô Quyền',91),(8583,'Quận Lê Chân',91),(8584,'Quận Hải An',91),(8585,'Quận Kiến An',91),(8586,'Quận Đồ Sơn',91),(8587,'Quận Dương Kinh',91),(8588,'Huyện Thuỷ Nguyên',91),(8589,'Huyện An Dương',91),(8590,'Huyện An Lão',91),(8591,'Huyện Kiến Thuỵ',91),(8592,'Huyện Tiên Lãng',91),(8593,'Huyện Vĩnh Bảo',91),(8594,'Huyện Cát Hải',91),(8595,'Huyện Bạch Long Vĩ',91),(8596,'Thành phố Hưng Yên',92),(8597,'Huyện Văn Lâm',92),(8598,'Huyện Văn Giang',92),(8599,'Huyện Yên Mỹ',92),(8600,'Thị xã Mỹ Hào',92),(8601,'Huyện Ân Thi',92),(8602,'Huyện Khoái Châu',92),(8603,'Huyện Kim Động',92),(8604,'Huyện Tiên Lữ',92),(8605,'Huyện Phù Cừ',92),(8606,'Thành phố Thái Bình',93),(8607,'Huyện Quỳnh Phụ',93),(8608,'Huyện Hưng Hà',93),(8609,'Huyện Đông Hưng',93),(8610,'Huyện Thái Thụy',93),(8611,'Huyện Tiền Hải',93),(8612,'Huyện Kiến Xương',93),(8613,'Huyện Vũ Thư',93),(8614,'Thành phố Phủ Lý',94),(8615,'Thị xã Duy Tiên',94),(8616,'Huyện Kim Bảng',94),(8617,'Huyện Thanh Liêm',94),(8618,'Huyện Bình Lục',94),(8619,'Huyện Lý Nhân',94),(8620,'Thành phố Nam Định',95),(8621,'Huyện Mỹ Lộc',95),(8622,'Huyện Vụ Bản',95),(8623,'Huyện Ý Yên',95),(8624,'Huyện Nghĩa Hưng',95),(8625,'Huyện Nam Trực',95),(8626,'Huyện Trực Ninh',95),(8627,'Huyện Xuân Trường',95),(8628,'Huyện Giao Thủy',95),(8629,'Huyện Hải Hậu',95),(8630,'Thành phố Ninh Bình',96),(8631,'Thành phố Tam Điệp',96),(8632,'Huyện Nho Quan',96),(8633,'Huyện Gia Viễn',96),(8634,'Huyện Hoa Lư',96),(8635,'Huyện Yên Khánh',96),(8636,'Huyện Kim Sơn',96),(8637,'Huyện Yên Mô',96),(8638,'Thành phố Thanh Hóa',97),(8639,'Thị xã Bỉm Sơn',97),(8640,'Thành phố Sầm Sơn',97),(8641,'Huyện Mường Lát',97),(8642,'Huyện Quan Hóa',97),(8643,'Huyện Bá Thước',97),(8644,'Huyện Quan Sơn',97),(8645,'Huyện Lang Chánh',97),(8646,'Huyện Ngọc Lặc',97),(8647,'Huyện Cẩm Thủy',97),(8648,'Huyện Thạch Thành',97),(8649,'Huyện Hà Trung',97),(8650,'Huyện Vĩnh Lộc',97),(8651,'Huyện Yên Định',97),(8652,'Huyện Thọ Xuân',97),(8653,'Huyện Thường Xuân',97),(8654,'Huyện Triệu Sơn',97),(8655,'Huyện Thiệu Hóa',97),(8656,'Huyện Hoằng Hóa',97),(8657,'Huyện Hậu Lộc',97),(8658,'Huyện Nga Sơn',97),(8659,'Huyện Như Xuân',97),(8660,'Huyện Như Thanh',97),(8661,'Huyện Nông Cống',97),(8662,'Huyện Đông Sơn',97),(8663,'Huyện Quảng Xương',97),(8664,'Thị xã Nghi Sơn',97),(8665,'Thành phố Vinh',98),(8666,'Thị xã Cửa Lò',98),(8667,'Thị xã Thái Hoà',98),(8668,'Huyện Quế Phong',98),(8669,'Huyện Quỳ Châu',98),(8670,'Huyện Kỳ Sơn',98),(8671,'Huyện Tương Dương',98),(8672,'Huyện Nghĩa Đàn',98),(8673,'Huyện Quỳ Hợp',98),(8674,'Huyện Quỳnh Lưu',98),(8675,'Huyện Con Cuông',98),(8676,'Huyện Tân Kỳ',98),(8677,'Huyện Anh Sơn',98),(8678,'Huyện Diễn Châu',98),(8679,'Huyện Yên Thành',98),(8680,'Huyện Đô Lương',98),(8681,'Huyện Thanh Chương',98),(8682,'Huyện Nghi Lộc',98),(8683,'Huyện Nam Đàn',98),(8684,'Huyện Hưng Nguyên',98),(8685,'Thị xã Hoàng Mai',98),(8686,'Thành phố Hà Tĩnh',99),(8687,'Thị xã Hồng Lĩnh',99),(8688,'Huyện Hương Sơn',99),(8689,'Huyện Đức Thọ',99),(8690,'Huyện Vũ Quang',99),(8691,'Huyện Nghi Xuân',99),(8692,'Huyện Can Lộc',99),(8693,'Huyện Hương Khê',99),(8694,'Huyện Thạch Hà',99),(8695,'Huyện Cẩm Xuyên',99),(8696,'Huyện Kỳ Anh',99),(8697,'Huyện Lộc Hà',99),(8698,'Thị xã Kỳ Anh',99),(8699,'Thành Phố Đồng Hới',100),(8700,'Huyện Minh Hóa',100),(8701,'Huyện Tuyên Hóa',100),(8702,'Huyện Quảng Trạch',100),(8703,'Huyện Bố Trạch',100),(8704,'Huyện Quảng Ninh',100),(8705,'Huyện Lệ Thủy',100),(8706,'Thị xã Ba Đồn',100),(8707,'Thành phố Đông Hà',101),(8708,'Thị xã Quảng Trị',101),(8709,'Huyện Vĩnh Linh',101),(8710,'Huyện Hướng Hóa',101),(8711,'Huyện Gio Linh',101),(8712,'Huyện Đa Krông',101),(8713,'Huyện Cam Lộ',101),(8714,'Huyện Triệu Phong',101),(8715,'Huyện Hải Lăng',101),(8716,'Huyện Cồn Cỏ',101),(8717,'Thành phố Huế',102),(8718,'Huyện Phong Điền',102),(8719,'Huyện Quảng Điền',102),(8720,'Huyện Phú Vang',102),(8721,'Thị xã Hương Thủy',102),(8722,'Thị xã Hương Trà',102),(8723,'Huyện A Lưới',102),(8724,'Huyện Phú Lộc',102),(8725,'Huyện Nam Đông',102),(8726,'Quận Liên Chiểu',103),(8727,'Quận Thanh Khê',103),(8728,'Quận Hải Châu',103),(8729,'Quận Sơn Trà',103),(8730,'Quận Ngũ Hành Sơn',103),(8731,'Quận Cẩm Lệ',103),(8732,'Huyện Hòa Vang',103),(8733,'Huyện Hoàng Sa',103),(8734,'Thành phố Tam Kỳ',104),(8735,'Thành phố Hội An',104),(8736,'Huyện Tây Giang',104),(8737,'Huyện Đông Giang',104),(8738,'Huyện Đại Lộc',104),(8739,'Thị xã Điện Bàn',104),(8740,'Huyện Duy Xuyên',104),(8741,'Huyện Quế Sơn',104),(8742,'Huyện Nam Giang',104),(8743,'Huyện Phước Sơn',104),(8744,'Huyện Hiệp Đức',104),(8745,'Huyện Thăng Bình',104),(8746,'Huyện Tiên Phước',104),(8747,'Huyện Bắc Trà My',104),(8748,'Huyện Nam Trà My',104),(8749,'Huyện Núi Thành',104),(8750,'Huyện Phú Ninh',104),(8751,'Huyện Nông Sơn',104),(8752,'Thành phố Quảng Ngãi',105),(8753,'Huyện Bình Sơn',105),(8754,'Huyện Trà Bồng',105),(8755,'Huyện Sơn Tịnh',105),(8756,'Huyện Tư Nghĩa',105),(8757,'Huyện Sơn Hà',105),(8758,'Huyện Sơn Tây',105),(8759,'Huyện Minh Long',105),(8760,'Huyện Nghĩa Hành',105),(8761,'Huyện Mộ Đức',105),(8762,'Thị xã Đức Phổ',105),(8763,'Huyện Ba Tơ',105),(8764,'Huyện Lý Sơn',105),(8765,'Thành phố Quy Nhơn',106),(8766,'Huyện An Lão',106),(8767,'Thị xã Hoài Nhơn',106),(8768,'Huyện Hoài Ân',106),(8769,'Huyện Phù Mỹ',106),(8770,'Huyện Vĩnh Thạnh',106),(8771,'Huyện Tây Sơn',106),(8772,'Huyện Phù Cát',106),(8773,'Thị xã An Nhơn',106),(8774,'Huyện Tuy Phước',106),(8775,'Huyện Vân Canh',106),(8776,'Thành phố Tuy Hoà',107),(8777,'Thị xã Sông Cầu',107),(8778,'Huyện Đồng Xuân',107),(8779,'Huyện Tuy An',107),(8780,'Huyện Sơn Hòa',107),(8781,'Huyện Sông Hinh',107),(8782,'Huyện Tây Hoà',107),(8783,'Huyện Phú Hoà',107),(8784,'Thị xã Đông Hòa',107),(8785,'Thành phố Nha Trang',108),(8786,'Thành phố Cam Ranh',108),(8787,'Huyện Cam Lâm',108),(8788,'Huyện Vạn Ninh',108),(8789,'Thị xã Ninh Hòa',108),(8790,'Huyện Khánh Vĩnh',108),(8791,'Huyện Diên Khánh',108),(8792,'Huyện Khánh Sơn',108),(8793,'Huyện Trường Sa',108),(8794,'Thành phố Phan Rang-Tháp Chàm',109),(8795,'Huyện Bác Ái',109),(8796,'Huyện Ninh Sơn',109),(8797,'Huyện Ninh Hải',109),(8798,'Huyện Ninh Phước',109),(8799,'Huyện Thuận Bắc',109),(8800,'Huyện Thuận Nam',109),(8801,'Thành phố Phan Thiết',110),(8802,'Thị xã La Gi',110),(8803,'Huyện Tuy Phong',110),(8804,'Huyện Bắc Bình',110),(8805,'Huyện Hàm Thuận Bắc',110),(8806,'Huyện Hàm Thuận Nam',110),(8807,'Huyện Tánh Linh',110),(8808,'Huyện Đức Linh',110),(8809,'Huyện Hàm Tân',110),(8810,'Huyện Phú Quí',110),(8811,'Thành phố Kon Tum',111),(8812,'Huyện Đắk Glei',111),(8813,'Huyện Ngọc Hồi',111),(8814,'Huyện Đắk Tô',111),(8815,'Huyện Kon Plông',111),(8816,'Huyện Kon Rẫy',111),(8817,'Huyện Đắk Hà',111),(8818,'Huyện Sa Thầy',111),(8819,'Huyện Tu Mơ Rông',111),(8820,'Huyện Ia H\' Drai',111),(8821,'Thành phố Pleiku',112),(8822,'Thị xã An Khê',112),(8823,'Thị xã Ayun Pa',112),(8824,'Huyện KBang',112),(8825,'Huyện Đăk Đoa',112),(8826,'Huyện Chư Păh',112),(8827,'Huyện Ia Grai',112),(8828,'Huyện Mang Yang',112),(8829,'Huyện Kông Chro',112),(8830,'Huyện Đức Cơ',112),(8831,'Huyện Chư Prông',112),(8832,'Huyện Chư Sê',112),(8833,'Huyện Đăk Pơ',112),(8834,'Huyện Ia Pa',112),(8835,'Huyện Krông Pa',112),(8836,'Huyện Phú Thiện',112),(8837,'Huyện Chư Pưh',112),(8838,'Thành phố Buôn Ma Thuột',113),(8839,'Thị xã Buôn Hồ',113),(8840,'Huyện Ea H\'leo',113),(8841,'Huyện Ea Súp',113),(8842,'Huyện Buôn Đôn',113),(8843,'Huyện Cư M\'gar',113),(8844,'Huyện Krông Búk',113),(8845,'Huyện Krông Năng',113),(8846,'Huyện Ea Kar',113),(8847,'Huyện M\'Đrắk',113),(8848,'Huyện Krông Bông',113),(8849,'Huyện Krông Pắc',113),(8850,'Huyện Krông A Na',113),(8851,'Huyện Lắk',113),(8852,'Huyện Cư Kuin',113),(8853,'Thành phố Gia Nghĩa',114),(8854,'Huyện Đăk Glong',114),(8855,'Huyện Cư Jút',114),(8856,'Huyện Đắk Mil',114),(8857,'Huyện Krông Nô',114),(8858,'Huyện Đắk Song',114),(8859,'Huyện Đắk R\'Lấp',114),(8860,'Huyện Tuy Đức',114),(8861,'Thành phố Đà Lạt',115),(8862,'Thành phố Bảo Lộc',115),(8863,'Huyện Đam Rông',115),(8864,'Huyện Lạc Dương',115),(8865,'Huyện Lâm Hà',115),(8866,'Huyện Đơn Dương',115),(8867,'Huyện Đức Trọng',115),(8868,'Huyện Di Linh',115),(8869,'Huyện Bảo Lâm',115),(8870,'Huyện Đạ Huoai',115),(8871,'Huyện Đạ Tẻh',115),(8872,'Huyện Cát Tiên',115),(8873,'Thị xã Phước Long',116),(8874,'Thành phố Đồng Xoài',116),(8875,'Thị xã Bình Long',116),(8876,'Huyện Bù Gia Mập',116),(8877,'Huyện Lộc Ninh',116),(8878,'Huyện Bù Đốp',116),(8879,'Huyện Hớn Quản',116),(8880,'Huyện Đồng Phú',116),(8881,'Huyện Bù Đăng',116),(8882,'Huyện Chơn Thành',116),(8883,'Huyện Phú Riềng',116),(8884,'Thành phố Tây Ninh',117),(8885,'Huyện Tân Biên',117),(8886,'Huyện Tân Châu',117),(8887,'Huyện Dương Minh Châu',117),(8888,'Huyện Châu Thành',117),(8889,'Thị xã Hòa Thành',117),(8890,'Huyện Gò Dầu',117),(8891,'Huyện Bến Cầu',117),(8892,'Thị xã Trảng Bàng',117),(8893,'Thành phố Thủ Dầu Một',2),(8894,'Huyện Bàu Bàng',2),(8895,'Huyện Dầu Tiếng',2),(8896,'Thị xã Bến Cát',2),(8897,'Huyện Phú Giáo',2),(8898,'Thị xã Tân Uyên',2),(8899,'Thành phố Dĩ An',2),(8900,'Thành phố Thuận An',2),(8901,'Huyện Bắc Tân Uyên',2),(8902,'Thành phố Biên Hòa',118),(8903,'Thành phố Long Khánh',118),(8904,'Huyện Tân Phú',118),(8905,'Huyện Vĩnh Cửu',118),(8906,'Huyện Định Quán',118),(8907,'Huyện Trảng Bom',118),(8908,'Huyện Thống Nhất',118),(8909,'Huyện Cẩm Mỹ',118),(8910,'Huyện Long Thành',118),(8911,'Huyện Xuân Lộc',118),(8912,'Huyện Nhơn Trạch',118),(8913,'Thành phố Vũng Tàu',119),(8914,'Thành phố Bà Rịa',119),(8915,'Huyện Châu Đức',119),(8916,'Huyện Xuyên Mộc',119),(8917,'Huyện Long Điền',119),(8918,'Huyện Đất Đỏ',119),(8919,'Thị xã Phú Mỹ',119),(8920,'Huyện Côn Đảo',119),(8921,'Quận 1',120),(8922,'Quận 12',120),(8923,'Quận Gò Vấp',120),(8924,'Quận Bình Thạnh',120),(8925,'Quận Tân Bình',120),(8926,'Quận Tân Phú',120),(8927,'Quận Phú Nhuận',120),(8928,'Thành phố Thủ Đức',120),(8929,'Quận 3',120),(8930,'Quận 10',120),(8931,'Quận 11',120),(8932,'Quận 4',120),(8933,'Quận 5',120),(8934,'Quận 6',120),(8935,'Quận 8',120),(8936,'Quận Bình Tân',120),(8937,'Quận 7',120),(8938,'Huyện Củ Chi',120),(8939,'Huyện Hóc Môn',120),(8940,'Huyện Bình Chánh',120),(8941,'Huyện Nhà Bè',120),(8942,'Huyện Cần Giờ',120),(8943,'Thành phố Tân An',121),(8944,'Thị xã Kiến Tường',121),(8945,'Huyện Tân Hưng',121),(8946,'Huyện Vĩnh Hưng',121),(8947,'Huyện Mộc Hóa',121),(8948,'Huyện Tân Thạnh',121),(8949,'Huyện Thạnh Hóa',121),(8950,'Huyện Đức Huệ',121),(8951,'Huyện Đức Hòa',121),(8952,'Huyện Bến Lức',121),(8953,'Huyện Thủ Thừa',121),(8954,'Huyện Tân Trụ',121),(8955,'Huyện Cần Đước',121),(8956,'Huyện Cần Giuộc',121),(8957,'Huyện Châu Thành',121),(8958,'Thành phố Mỹ Tho',122),(8959,'Thị xã Gò Công',122),(8960,'Thị xã Cai Lậy',122),(8961,'Huyện Tân Phước',122),(8962,'Huyện Cái Bè',122),(8963,'Huyện Cai Lậy',122),(8964,'Huyện Châu Thành',122),(8965,'Huyện Chợ Gạo',122),(8966,'Huyện Gò Công Tây',122),(8967,'Huyện Gò Công Đông',122),(8968,'Huyện Tân Phú Đông',122),(8969,'Thành phố Bến Tre',123),(8970,'Huyện Châu Thành',123),(8971,'Huyện Chợ Lách',123),(8972,'Huyện Mỏ Cày Nam',123),(8973,'Huyện Giồng Trôm',123),(8974,'Huyện Bình Đại',123),(8975,'Huyện Ba Tri',123),(8976,'Huyện Thạnh Phú',123),(8977,'Huyện Mỏ Cày Bắc',123),(8978,'Thành phố Trà Vinh',124),(8979,'Huyện Càng Long',124),(8980,'Huyện Cầu Kè',124),(8981,'Huyện Tiểu Cần',124),(8982,'Huyện Châu Thành',124),(8983,'Huyện Cầu Ngang',124),(8984,'Huyện Trà Cú',124),(8985,'Huyện Duyên Hải',124),(8986,'Thị xã Duyên Hải',124),(8987,'Thành phố Vĩnh Long',125),(8988,'Huyện Long Hồ',125),(8989,'Huyện Mang Thít',125),(8990,'Huyện Vũng Liêm',125),(8991,'Huyện Tam Bình',125),(8992,'Thị xã Bình Minh',125),(8993,'Huyện Trà Ôn',125),(8994,'Huyện Bình Tân',125),(8995,'Thành phố Cao Lãnh',126),(8996,'Thành phố Sa Đéc',126),(8997,'Thành phố Hồng Ngự',126),(8998,'Huyện Tân Hồng',126),(8999,'Huyện Hồng Ngự',126),(9000,'Huyện Tam Nông',126),(9001,'Huyện Tháp Mười',126),(9002,'Huyện Cao Lãnh',126),(9003,'Huyện Thanh Bình',126),(9004,'Huyện Lấp Vò',126),(9005,'Huyện Lai Vung',126),(9006,'Huyện Châu Thành',126),(9007,'Thành phố Long Xuyên',127),(9008,'Thành phố Châu Đốc',127),(9009,'Huyện An Phú',127),(9010,'Thị xã Tân Châu',127),(9011,'Huyện Phú Tân',127),(9012,'Huyện Châu Phú',127),(9013,'Huyện Tịnh Biên',127),(9014,'Huyện Tri Tôn',127),(9015,'Huyện Châu Thành',127),(9016,'Huyện Chợ Mới',127),(9017,'Huyện Thoại Sơn',127),(9018,'Thành phố Rạch Giá',128),(9019,'Thành phố Hà Tiên',128),(9020,'Huyện Kiên Lương',128),(9021,'Huyện Hòn Đất',128),(9022,'Huyện Tân Hiệp',128),(9023,'Huyện Châu Thành',128),(9024,'Huyện Giồng Riềng',128),(9025,'Huyện Gò Quao',128),(9026,'Huyện An Biên',128),(9027,'Huyện An Minh',128),(9028,'Huyện Vĩnh Thuận',128),(9029,'Thành phố Phú Quốc',128),(9030,'Huyện Kiên Hải',128),(9031,'Huyện U Minh Thượng',128),(9032,'Huyện Giang Thành',128),(9033,'Quận Ninh Kiều',129),(9034,'Quận Ô Môn',129),(9035,'Quận Bình Thuỷ',129),(9036,'Quận Cái Răng',129),(9037,'Quận Thốt Nốt',129),(9038,'Huyện Vĩnh Thạnh',129),(9039,'Huyện Cờ Đỏ',129),(9040,'Huyện Phong Điền',129),(9041,'Huyện Thới Lai',129),(9042,'Thành phố Vị Thanh',130),(9043,'Thành phố Ngã Bảy',130),(9044,'Huyện Châu Thành A',130),(9045,'Huyện Châu Thành',130),(9046,'Huyện Phụng Hiệp',130),(9047,'Huyện Vị Thuỷ',130),(9048,'Huyện Long Mỹ',130),(9049,'Thị xã Long Mỹ',130),(9050,'Thành phố Sóc Trăng',131),(9051,'Huyện Châu Thành',131),(9052,'Huyện Kế Sách',131),(9053,'Huyện Mỹ Tú',131),(9054,'Huyện Cù Lao Dung',131),(9055,'Huyện Long Phú',131),(9056,'Huyện Mỹ Xuyên',131),(9057,'Thị xã Ngã Năm',131),(9058,'Huyện Thạnh Trị',131),(9059,'Thị xã Vĩnh Châu',131),(9060,'Huyện Trần Đề',131),(9061,'Thành phố Bạc Liêu',132),(9062,'Huyện Hồng Dân',132),(9063,'Huyện Phước Long',132),(9064,'Huyện Vĩnh Lợi',132),(9065,'Thị xã Giá Rai',132),(9066,'Huyện Đông Hải',132),(9067,'Huyện Hoà Bình',132),(9068,'Thành phố Cà Mau',133),(9069,'Huyện U Minh',133),(9070,'Huyện Thới Bình',133),(9071,'Huyện Trần Văn Thời',133),(9072,'Huyện Cái Nước',133),(9073,'Huyện Đầm Dơi',133),(9074,'Huyện Năm Căn',133),(9075,'Huyện Phú Tân',133),(9076,'Huyện Ngọc Hiển',133),(9077,' Quận 9',134);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1pyiwrqimi3hnl3vtgsypj5r` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'AD','Andorra'),(5,'AO','Angola'),(6,'AI','Anguilla'),(7,'AG','Antigua and Barbuda'),(8,'AR','Argentina'),(9,'AM','Armenia'),(10,'AW','Aruba'),(11,'AU','Australia'),(12,'AT','Austria'),(13,'AZ','Azerbaijan'),(14,'BS','Bahamas'),(15,'BH','Bahrain'),(16,'BD','Bangladesh'),(17,'BB','Barbados'),(18,'BY','Belarus'),(19,'BE','Belgium'),(20,'BZ','Belize'),(21,'BJ','Benin'),(22,'BM','Bermuda'),(23,'BT','Bhutan'),(24,'BA','Bosnia and Herzegovina'),(25,'BW','Botswana'),(26,'BV','Bouvet Island'),(27,'BR','Brazil'),(28,'IO','British Indian Ocean Territory'),(29,'BN','Brunei'),(30,'BG','Bulgaria'),(31,'BF','Burkina Faso'),(32,'BI','Burundi'),(33,'KH','Cambodia'),(34,'CM','Cameroon'),(35,'CA','Canada'),(36,'CV','Cape Verde'),(37,'KY','Cayman Islands'),(38,'CF','Central African Republic'),(39,'TD','Chad'),(40,'CL','Chile'),(41,'CN','China'),(42,'CX','Christmas Island'),(43,'CC','Cocos (Keeling) Islands'),(44,'CO','Colombia'),(45,'KM','Comoros'),(46,NULL,'Congo'),(47,'CK','Cook Islands'),(48,'CR','Costa Rica'),(49,'HR','Croatia'),(50,'CU','Cuba'),(51,'CY','Cyprus'),(52,'CZ','Czech Republic'),(53,'DK','Denmark'),(54,'DJ','Djibouti'),(55,'DM','Dominica'),(56,'DO','Dominican Republic'),(57,'EC','Ecuador'),(58,'EG','Egypt'),(59,'SV','El Salvador'),(60,'GQ','Equatorial Guinea'),(61,'ER','Eritrea'),(62,'EE','Estonia'),(63,'ET','Ethiopia'),(64,'FK','Falkland Islands'),(65,'FO','Faroe Islands'),(66,'FJ','Fiji'),(67,'FI','Finland'),(68,'FR','France'),(69,'PF','French Polynesia'),(70,'GA','Gabon'),(71,'GM','Gambia'),(72,'GE','Georgia'),(73,'DE','Germany'),(74,'GH','Ghana'),(75,'GI','Gibraltar'),(76,'GR','Greece'),(77,'GL','Greenland'),(78,'GD','Grenada'),(79,'GP','Guadeloupe'),(80,'GU','Guam'),(81,'GT','Guatemala'),(82,'GG','Guernsey'),(83,'GN','Guinea'),(84,'GW','Guinea-Bissau'),(85,'GY','Guyana'),(86,'HT','Haiti'),(87,'HM','Heard Island and McDonald Islands'),(88,'VA','Vatican City State (Holy See)'),(89,'HN','Honduras'),(90,'HK','Hong Kong'),(91,'HU','Hungary'),(92,'IS','Iceland'),(93,'IN','India'),(94,'ID','Indonesia'),(95,'IR','Iran'),(96,'IQ','Iraq'),(97,'IE','Ireland'),(98,'IM','Isle of Man'),(99,'IL','Israel'),(100,'IT','Italy'),(101,'JM','Jamaica'),(102,'JP','Japan'),(103,'JE','Jersey'),(104,'JO','Jordan'),(105,'KZ','Kazakhstan'),(106,'KE','Kenya'),(107,'KI','Kiribati'),(108,'KW','Kuwait'),(109,'KG','Kyrgyzstan'),(110,'LA','Laos'),(111,'LV','Latvia'),(112,'LB','Lebanon'),(113,'LS','Lesotho'),(114,'LR','Liberia'),(115,'LI','Liechtenstein'),(116,'LT','Lithuania'),(117,'LU','Luxembourg'),(118,'MO','Macau'),(119,'MG','Madagascar'),(120,'MW','Malawi'),(121,'MY','Malaysia'),(122,'MV','Maldives'),(123,'ML','Mali'),(124,'MT','Malta'),(125,'MH','Marshall Islands'),(126,'MQ','Martinique'),(127,'MR','Mauritania'),(128,'MU','Mauritius'),(129,'YT','Mayotte'),(130,'MX','Mexico'),(131,'MC','Monaco'),(132,'MN','Mongolia'),(133,'ME','Montenegro'),(134,'MS','Montserrat'),(135,'MA','Morocco'),(136,'MZ','Mozambique'),(137,'MM','Myanmar'),(138,'NA','Namibia'),(139,'NR','Nauru'),(140,'NP','Nepal'),(141,'NL','Netherlands'),(142,'NC','New Caledonia'),(143,'NZ','New Zealand'),(144,'NI','Nicaragua'),(145,'NE','Niger'),(146,'NG','Nigeria'),(147,'NU','Niue'),(148,'NF','Norfolk Island'),(149,'MP','Northern Mariana Islands'),(150,'NO','Norway'),(151,'OM','Oman'),(152,'PK','Pakistan'),(153,'PW','Palau'),(154,'PA','Panama'),(155,'PG','Papua New Guinea'),(156,'PY','Paraguay'),(157,'PE','Peru'),(158,'PH','Philippines'),(159,'PN','Pitcairn'),(160,'PL','Poland'),(161,'PT','Portugal'),(162,'PR','Puerto Rico'),(163,'QA','Qatar'),(164,'RE','Réunion'),(165,'RO','Romania'),(166,'RW','Rwanda'),(167,'KN','Saint Kitts and Nevis'),(168,'LC','Saint Lucia'),(169,'PM','Saint Pierre and Miquelon'),(170,'VC','Saint Vincent and the Grenadines'),(171,'WS','Samoa'),(172,'SM','San Marino'),(173,'ST','Sao Tome and Principe'),(174,'SA','Saudi Arabia'),(175,'SN','Senegal'),(176,'RS','Serbia'),(177,'SC','Seychelles'),(178,'SL','Sierra Leone'),(179,'SG','Singapore'),(180,'SK','Slovakia'),(181,'SI','Slovenia'),(182,'SB','Solomon Islands'),(183,'SO','Somalia'),(184,'ZA','South Africa'),(185,'GS','South Georgia and the South Sandwich Islands'),(186,'ES','Spain'),(187,'LK','Sri Lanka'),(188,'SD','Sudan'),(189,'SR','Suriname'),(190,'SZ','Swaziland'),(191,'SE','Sweden'),(192,'CH','Switzerland'),(193,'SY','Syria'),(194,'TW','Taiwan'),(195,'TJ','Tajikistan'),(196,'TH','Thailand'),(197,'TL','Timor-Leste'),(198,'TG','Togo'),(199,'TK','Tokelau'),(200,'TO','Tonga'),(201,'TT','Trinidad and Tobago'),(202,'TN','Tunisia'),(203,'TR','Turkey'),(204,'TM','Turkmenistan'),(205,'TC','Turks and Caicos Islands'),(206,'TV','Tuvalu'),(207,'UG','Uganda'),(208,'UA','Ukraine'),(209,'AE','United Arab Emirates'),(210,'GB','United Kingdom'),(211,'US','United States'),(212,'UM','United States Minor Outlying Islands'),(213,'UY','Uruguay'),(214,'UZ','Uzbekistan'),(215,'VU','Vanuatu'),(216,'VN','Vietnam'),(217,'WF','Wallis and Futuna'),(218,'YE','Yemen'),(219,'ZM','Zambia'),(220,'ZW','Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `unit` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nd7wu9uyva66k99nmgvqlyk8c` (`symbol`),
  UNIQUE KEY `UK_sw9snnq6m3xc7ahlqpb63cdtx` (`unit`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'$','USD'),(2,'đ','VND');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdeh4h59nedlwji0j8e57hu9mf` (`room_id`),
  CONSTRAINT `FKdeh4h59nedlwji0j8e57hu9mf` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'0',1),(2,'1',1),(3,'2',1),(4,'3',1),(5,'4',1),(6,'5',1),(7,'6',1),(8,'7',1),(9,'8',1),(10,'9',1),(11,'10',1),(12,'11',1),(13,'12',1),(14,'13',1),(15,'14',1),(16,'15',1),(17,'Capture.PNG',2),(18,'asdfsad.PNG',2),(19,'BG.png',2),(20,'247129345_909249943358568_6309293780230821703_n.jpg',2),(21,'251815822_4574231789326013_1714193150017519534_n.jpg',2),(27,'Capture.PNG',5),(28,'asdfsad.PNG',5),(29,'BG.png',5),(30,'247129345_909249943358568_6309293780230821703_n.jpg',5),(31,'251815822_4574231789326013_1714193150017519534_n.jpg',5),(32,'Capture.PNG',6),(33,'asdfsad.PNG',6),(34,'BG.png',6),(35,'247129345_909249943358568_6309293780230821703_n.jpg',6),(36,'251815822_4574231789326013_1714193150017519534_n.jpg',6),(37,'asdfsad.PNG',7),(38,'Capture.PNG',7),(39,'BG.png',7),(40,'251815822_4574231789326013_1714193150017519534_n.jpg',7),(41,'247129345_909249943358568_6309293780230821703_n.jpg',7),(42,'asdfsad.PNG',8),(43,'Capture.PNG',8),(44,'BG.png',8),(45,'Capture2.PNG',8),(46,'247129345_909249943358568_6309293780230821703_n.jpg',8),(47,'251815822_4574231789326013_1714193150017519534_n.jpg',8),(119,'asdfsad.PNG',4),(120,'Capture - Copy.PNG',4),(121,'BG.png',4),(122,'Untitled - Copy.png',4),(123,'Capture2.PNG',4),(124,'247129345_909249943358568_6309293780230821703_n.jpg',4),(203,'BG.png',22),(204,'251815822_4574231789326013_1714193150017519534_n - Copy.jpg',22),(205,'247129345_909249943358568_6309293780230821703_n.jpg',22),(206,'251815822_4574231789326013_1714193150017519534_n.jpg',22),(207,'asdfsad - Copy.PNG',22),(208,'BG.png',23),(209,'251815822_4574231789326013_1714193150017519534_n - Copy.jpg',23),(210,'247129345_909249943358568_6309293780230821703_n.jpg',23),(211,'251815822_4574231789326013_1714193150017519534_n.jpg',23),(212,'asdfsad - Copy.PNG',23),(213,'BG.png',24),(214,'251815822_4574231789326013_1714193150017519534_n - Copy.jpg',24),(215,'247129345_909249943358568_6309293780230821703_n.jpg',24),(216,'251815822_4574231789326013_1714193150017519534_n.jpg',24),(217,'asdfsad - Copy.PNG',24),(218,'BG.png',25),(219,'251815822_4574231789326013_1714193150017519534_n - Copy.jpg',25),(220,'247129345_909249943358568_6309293780230821703_n.jpg',25),(221,'251815822_4574231789326013_1714193150017519534_n.jpg',25),(222,'asdfsad - Copy.PNG',25),(223,'Capture2 - Copy.PNG',26),(224,'Capture.PNG',26),(225,'251815822_4574231789326013_1714193150017519534_n - Copy.jpg',26),(226,'247129345_909249943358568_6309293780230821703_n.jpg',26),(227,'251815822_4574231789326013_1714193150017519534_n.jpg',26),(228,'Untitled.png',26);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `updated_at` datetime(6) DEFAULT NULL,
  `comment` varchar(1024) COLLATE utf8_general_ci NOT NULL,
  `final_rating` tinyint DEFAULT '0',
  `accuracy_rating` tinyint DEFAULT '0',
  `checkin_rating` tinyint DEFAULT '0',
  `cleanliness_rating` tinyint DEFAULT '0',
  `contact_rating` tinyint DEFAULT '0',
  `location_rating` tinyint DEFAULT '0',
  `value_rating` tinyint DEFAULT '0',
  `booking_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK28an517hrxtt2bsg93uefugrm` (`booking_id`),
  CONSTRAINT `FK28an517hrxtt2bsg93uefugrm` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  CONSTRAINT `reviews_chk_1` CHECK (((`final_rating` >= 0) and (`final_rating` <= 5))),
  CONSTRAINT `reviews_chk_2` CHECK (((`accuracy_rating` >= 0) and (`accuracy_rating` <= 5))),
  CONSTRAINT `reviews_chk_3` CHECK (((`checkin_rating` >= 0) and (`checkin_rating` <= 5))),
  CONSTRAINT `reviews_chk_4` CHECK (((`cleanliness_rating` >= 0) and (`cleanliness_rating` <= 5))),
  CONSTRAINT `reviews_chk_5` CHECK (((`contact_rating` >= 0) and (`contact_rating` <= 5))),
  CONSTRAINT `reviews_chk_6` CHECK (((`location_rating` >= 0) and (`location_rating` <= 5))),
  CONSTRAINT `reviews_chk_7` CHECK (((`value_rating` >= 0) and (`value_rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'2021-11-30 14:34:24.000000',1,NULL,'Good',5,5,5,5,5,5,5,1),(4,'2021-12-05 16:19:38.987000',1,'2021-12-05 16:19:38.987000','xin chào',4,3,3,5,4,4,5,20);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (3,'Admin'),(1,'Host'),(2,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_groups`
--

DROP TABLE IF EXISTS `room_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `room_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rf84hb3gew1auoelhpppgequc` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_groups`
--

LOCK TABLES `room_groups` WRITE;
/*!40000 ALTER TABLE `room_groups` DISABLE KEYS */;
INSERT INTO `room_groups` VALUES (1,'can_ho','Căn hộ'),(2,'nha','Nhà'),(3,'can_ho_phu','Căn hộ phụ'),(4,'khong_gian_doc_dao','Không gian độc đáo'),(5,'cho_nghi_phuc_vu_buoi_sang','Chỗ nghĩ phục vụ buổi sáng'),(6,'khach_san_boutique','Khách sạn boutique');
/*!40000 ALTER TABLE `room_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_privacy`
--

DROP TABLE IF EXISTS `room_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `room_privacy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6os45y3f1m4q9t2weruhr6b8s` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_privacy`
--

LOCK TABLES `room_privacy` WRITE;
/*!40000 ALTER TABLE `room_privacy` DISABLE KEYS */;
INSERT INTO `room_privacy` VALUES (1,'Phòng chung'),(2,'Phòng riêng'),(3,'Toàn bộ nhà');
/*!40000 ALTER TABLE `room_privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `room_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_b70k1tp1aa52elkkxht660u36` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (1,'Căn hộ cho thuê','Một địa điểm cho thuê trong một tòa nhà chung cư hoặc khu phức hợp.'),(2,'Căn hộ (chung cư) cao cấp','Một chỗ ở trong một tòa chung cư hoặc khu phức hợp thuộc sở hữu của cư dân.'),(3,'Tầng lửng','Một căn hộ thường hoặc căn hộ chung cư cao cấp với thiết kế ưu tiên không gian thoáng, có thể có vách tường thấp bên trong.'),(4,'Căn hộ dịch vụ','Một căn hộ có tiện nghi như khách sạn, do một công ty quản lý chuyên nghiệp cung cấp dịch vụ.'),(5,'Casa particular','Một phòng riêng trong một ngôi nhà ở Cuba, cho cảm giác như chỗ nghỉ phục vụ bữa sáng.'),(6,'Nhà nghỉ dưỡng','Một chỗ ở cho thuê đầy đủ tiện nghi, có nhà bếp và phòng tắm, có thể cung cấp một số dịch vụ cho khách, chẳng hạn như quầy lễ tân.');
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `updated_at` datetime(6) DEFAULT NULL,
  `accomodates_count` smallint NOT NULL DEFAULT '0',
  `bathroom_count` smallint NOT NULL DEFAULT '0',
  `bed_count` smallint NOT NULL DEFAULT '0',
  `bedroom_count` smallint NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  `name` varchar(512) NOT NULL,
  `price` float NOT NULL,
  `price_type` varchar(20) NOT NULL,
  `rating` smallint DEFAULT NULL,
  `stay_type` varchar(20) NOT NULL,
  `category_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `host_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `minimum_stay` int DEFAULT '1',
  `room_group_id` int DEFAULT NULL,
  `room_type_id` int DEFAULT NULL,
  `privacy_type` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `room_privacy_id` int DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKny0kelw84f5mokcnk9pga4qb9` (`category_id`),
  KEY `FKg3b03ni2v2le38dc78o8rcd4` (`city_id`),
  KEY `FKrscqoph26huxvm2lkewu1yw0m` (`country_id`),
  KEY `FKfd82wo2bvs7xb0vqybc6ksgj7` (`currency_id`),
  KEY `FKoxd2xovikhdpk4si9ffhyb83i` (`host_id`),
  KEY `FK8mo2x2ce9mde7dfh8omlitwcr` (`state_id`),
  KEY `FKknoei1pgkh3rfcr1cyj83o0nn` (`room_group_id`),
  KEY `FKh9m2n1paq5hmd3u0klfl7wsfv` (`room_type_id`),
  KEY `FK1hld7yr64yj7sossifs9kk80e` (`room_privacy_id`),
  CONSTRAINT `FK1hld7yr64yj7sossifs9kk80e` FOREIGN KEY (`room_privacy_id`) REFERENCES `room_privacy` (`id`),
  CONSTRAINT `FK8mo2x2ce9mde7dfh8omlitwcr` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  CONSTRAINT `FKfd82wo2bvs7xb0vqybc6ksgj7` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `FKg3b03ni2v2le38dc78o8rcd4` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `FKh9m2n1paq5hmd3u0klfl7wsfv` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`),
  CONSTRAINT `FKknoei1pgkh3rfcr1cyj83o0nn` FOREIGN KEY (`room_group_id`) REFERENCES `room_groups` (`id`),
  CONSTRAINT `FKny0kelw84f5mokcnk9pga4qb9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FKoxd2xovikhdpk4si9ffhyb83i` FOREIGN KEY (`host_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKrscqoph26huxvm2lkewu1yw0m` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'2021-09-18 17:04:52.572000',1,'2021-09-18 17:04:52.572000',2,1,2,1,'GOSHOBO is the oldest ryokan hotel in Arima Onsen, one of the three historical hot springs in Japan. It has served people since its foundation in the 12th century.\n\nThe guest room is a nostalgic tatami room with two beds, with a modern updated toilet attached. You can view a serene Zen garden and the refreshing Mt. Rokko.\n\nThe public hot spring bath in the hotel is open from 3 pm to 9:30 am.',11.0341,106.688,'A Relaxing Stay at a Historical Hot Spring Ryokan Hotel in Arima(a twin room, up to two people)歴史的木造建築の旅館,景観は庭のツイン【2名定員】',364,'PER_NIGHT',0,'DAY',6,8893,1,1,2,2,0,3,3,NULL,'1',2,' 92 đường Man Thiện - P.Tăng Nhơn Phú A - Q9'),(4,'2021-11-20 13:36:05.022000',1,'2021-12-02 20:01:10.585000',3,3,3,3,'Vị trí trung tâm,Phù hợp cho gia đình',11.0341,106.688,'Stunning wooden stilted house near Ban Dam Museum',645000,'PER_NIGHT',0,'WEEK',1,8893,216,2,17,2,1,3,3,NULL,'Capture - Copy.PNG',2,' 92 đường Man Thiện - P.Tăng Nhơn Phú A - Q9');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_amentities`
--

DROP TABLE IF EXISTS `rooms_amentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `rooms_amentities` (
  `room_id` int NOT NULL,
  `amentity_id` int NOT NULL,
  PRIMARY KEY (`room_id`,`amentity_id`),
  KEY `FKaslg3vgkpd41lbv2nev6ex2m0` (`amentity_id`),
  CONSTRAINT `FK3vsc016iloj07mhxxgissyi4` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  CONSTRAINT `FKaslg3vgkpd41lbv2nev6ex2m0` FOREIGN KEY (`amentity_id`) REFERENCES `amentities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_amentities`
--

LOCK TABLES `rooms_amentities` WRITE;
/*!40000 ALTER TABLE `rooms_amentities` DISABLE KEYS */;
INSERT INTO `rooms_amentities` VALUES (1,1),(1,3),(1,4),(2,4),(4,4),(5,4),(6,4),(1,5),(4,5),(22,5),(23,5),(24,5),(25,5),(26,5),(1,6),(1,7),(4,8),(4,9),(4,10),(22,10),(23,10),(24,10),(25,10),(2,11),(4,11),(5,11),(6,11),(26,11),(4,14),(4,15),(4,16),(4,17),(4,18),(7,18),(22,18),(23,18),(24,18),(25,18),(2,19),(4,19),(5,19),(6,19),(4,20),(4,21),(26,21),(4,22),(8,22),(4,23),(4,24),(4,25),(4,26),(7,26),(8,26),(4,27),(7,29),(8,29);
/*!40000 ALTER TABLE `rooms_amentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_rules`
--

DROP TABLE IF EXISTS `rooms_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `rooms_rules` (
  `room_id` int NOT NULL,
  `rule_id` int NOT NULL,
  PRIMARY KEY (`room_id`,`rule_id`),
  KEY `FKowo1c7x1smxmbbl4ri710abb0` (`rule_id`),
  CONSTRAINT `FKkna08eq1yg0wy7ulco4merufw` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  CONSTRAINT `FKowo1c7x1smxmbbl4ri710abb0` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_rules`
--

LOCK TABLES `rooms_rules` WRITE;
/*!40000 ALTER TABLE `rooms_rules` DISABLE KEYS */;
INSERT INTO `rooms_rules` VALUES (1,1),(2,1),(4,1),(5,1),(6,1),(7,1),(8,1),(22,1),(23,1),(24,1),(25,1),(26,1),(1,2),(2,2),(4,2),(5,2),(6,2),(7,2),(8,2),(22,2),(23,2),(24,2),(25,2),(26,2),(1,3),(2,3),(4,3),(5,3),(6,3),(7,3),(8,3),(22,3),(23,3),(24,3),(25,3),(26,3),(1,4),(2,4),(4,4),(5,4),(6,4),(7,4),(8,4),(22,4),(23,4),(24,4),(25,4),(26,4),(1,5),(2,5),(4,5),(5,5),(6,5),(7,5),(8,5),(22,5),(23,5),(24,5),(25,5),(26,5);
/*!40000 ALTER TABLE `rooms_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `updated_at` datetime(6) DEFAULT NULL,
  `icon` text NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5ajydv93eveurhwiye50g5tpp` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,'2021-09-18 16:58:01.521000',1,'2021-09-18 16:58:01.521000','<svg viewBox=\"0 0 32 32\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" role=\"presentation\" focusable=\"false\" style=\"display: block; height: 16px; width: 16px; fill: currentcolor;\"><path d=\"M16 1C7.716 1 1 7.716 1 16s6.716 15 15 15 15-6.716 15-15S24.284 1 16 1zm7.895 22.954l-9.526-5.5a1.5 1.5 0 0 1-.743-1.154l-.007-.145v-11h3V16.29l8.776 5.067-1.5 2.598z\"></path></svg>','Trả phòng: 10:00'),(2,'2021-09-18 16:58:09.464000',1,'2021-09-18 16:58:09.464000','<svg viewBox=\"0 0 32 32\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" role=\"presentation\" focusable=\"false\" style=\"display: block; height: 16px; width: 16px; fill: currentcolor;\"><path d=\"M19.862 24.105l1.535 1.536a2 2 0 0 0 2.327 2.327l1.55 1.548A4 4 0 0 1 19.365 26a3.913 3.913 0 0 1 .444-1.8l.052-.095zM11.757 16l8 8H10.81c.344.59.555 1.268.555 2a4 4 0 0 1-8 0c0-1.545.885-2.87 2.167-3.536.025-.039.05-.078.078-.116l.048-.055L9.95 18H8.364a3 3 0 0 0-1.976.743l-.145.136-3.829 3.829L1 21.294l3.829-3.83A5 5 0 0 1 8.1 16.008L8.364 16h3.393zM3.979 2.565l25.456 25.456-1.414 1.414L2.565 3.979l1.414-1.414zM7.365 24a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm23-22v2h-2.343a3 3 0 0 0-1.977.743l-.144.136-.536.535V19c0 .63-.122 1.23-.34 1.782l-8.929-8.929.06-.06-.184-.064-2.365-2.363A4 4 0 0 1 17.365 4a3.983 3.983 0 0 1 3.728 2.6l.066.192.499-.5.272-.27 2.556-2.558a5 5 0 0 1 3.271-1.457L28.022 2h2.343z\"></path></svg>','Không phù hợp với trẻ em và em bé'),(3,'2021-09-18 16:58:09.476000',1,'2021-09-18 16:58:09.476000','<svg viewBox=\"0 0 32 32\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" role=\"presentation\" focusable=\"false\" style=\"display: block; height: 16px; width: 16px; fill: currentcolor;\"><path d=\"M19.862 24.105l1.535 1.536a2 2 0 0 0 2.327 2.327l1.55 1.548A4 4 0 0 1 19.365 26a3.913 3.913 0 0 1 .444-1.8l.052-.095zM11.757 16l8 8H10.81c.344.59.555 1.268.555 2a4 4 0 0 1-8 0c0-1.545.885-2.87 2.167-3.536.025-.039.05-.078.078-.116l.048-.055L9.95 18H8.364a3 3 0 0 0-1.976.743l-.145.136-3.829 3.829L1 21.294l3.829-3.83A5 5 0 0 1 8.1 16.008L8.364 16h3.393zM3.979 2.565l25.456 25.456-1.414 1.414L2.565 3.979l1.414-1.414zM7.365 24a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm23-22v2h-2.343a3 3 0 0 0-1.977.743l-.144.136-.536.535V19c0 .63-.122 1.23-.34 1.782l-8.929-8.929.06-.06-.184-.064-2.365-2.363A4 4 0 0 1 17.365 4a3.983 3.983 0 0 1 3.728 2.6l.066.192.499-.5.272-.27 2.556-2.558a5 5 0 0 1 3.271-1.457L28.022 2h2.343z\"></path></svg>','Không hút thuốc'),(4,'2021-09-18 16:58:09.478000',1,'2021-09-18 16:58:09.478000','<svg viewBox=\"0 0 32 32\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" role=\"presentation\" focusable=\"false\" style=\"display: block; height: 16px; width: 16px; fill: currentcolor;\"><path d=\"M19.862 24.105l1.535 1.536a2 2 0 0 0 2.327 2.327l1.55 1.548A4 4 0 0 1 19.365 26a3.913 3.913 0 0 1 .444-1.8l.052-.095zM11.757 16l8 8H10.81c.344.59.555 1.268.555 2a4 4 0 0 1-8 0c0-1.545.885-2.87 2.167-3.536.025-.039.05-.078.078-.116l.048-.055L9.95 18H8.364a3 3 0 0 0-1.976.743l-.145.136-3.829 3.829L1 21.294l3.829-3.83A5 5 0 0 1 8.1 16.008L8.364 16h3.393zM3.979 2.565l25.456 25.456-1.414 1.414L2.565 3.979l1.414-1.414zM7.365 24a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm23-22v2h-2.343a3 3 0 0 0-1.977.743l-.144.136-.536.535V19c0 .63-.122 1.23-.34 1.782l-8.929-8.929.06-.06-.184-.064-2.365-2.363A4 4 0 0 1 17.365 4a3.983 3.983 0 0 1 3.728 2.6l.066.192.499-.5.272-.27 2.556-2.558a5 5 0 0 1 3.271-1.457L28.022 2h2.343z\"></path></svg>','Không thú cưng'),(5,'2021-09-18 16:58:09.480000',1,'2021-09-18 16:58:09.480000','<svg viewBox=\"0 0 32 32\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" role=\"presentation\" focusable=\"false\" style=\"display: block; height: 16px; width: 16px; fill: currentcolor;\"><path d=\"M19.862 24.105l1.535 1.536a2 2 0 0 0 2.327 2.327l1.55 1.548A4 4 0 0 1 19.365 26a3.913 3.913 0 0 1 .444-1.8l.052-.095zM11.757 16l8 8H10.81c.344.59.555 1.268.555 2a4 4 0 0 1-8 0c0-1.545.885-2.87 2.167-3.536.025-.039.05-.078.078-.116l.048-.055L9.95 18H8.364a3 3 0 0 0-1.976.743l-.145.136-3.829 3.829L1 21.294l3.829-3.83A5 5 0 0 1 8.1 16.008L8.364 16h3.393zM3.979 2.565l25.456 25.456-1.414 1.414L2.565 3.979l1.414-1.414zM7.365 24a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm23-22v2h-2.343a3 3 0 0 0-1.977.743l-.144.136-.536.535V19c0 .63-.122 1.23-.34 1.782l-8.929-8.929.06-.06-.184-.064-2.365-2.363A4 4 0 0 1 17.365 4a3.983 3.983 0 0 1 3.728 2.6l.066.192.499-.5.272-.27 2.556-2.558a5 5 0 0 1 3.271-1.457L28.022 2h2.343z\"></path></svg>','Không được tổ chức tiệc hoặc sự kiện');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nau09mwrvhjj0n0a6gfo5xmp3` (`name`),
  KEY `FKskkdphjml9vjlrqn4m5hi251y` (`country_id`),
  CONSTRAINT `FKskkdphjml9vjlrqn4m5hi251y` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (2,'74','Tỉnh Bình Dương',216),(72,'1','Thành phố Hà Nội',216),(73,'2','Tỉnh Hà Giang',216),(74,'4','Tỉnh Cao Bằng',216),(75,'6','Tỉnh Bắc Kạn',216),(76,'8','Tỉnh Tuyên Quang',216),(77,'10','Tỉnh Lào Cai',216),(78,'11','Tỉnh Điện Biên',216),(79,'12','Tỉnh Lai Châu',216),(80,'14','Tỉnh Sơn La',216),(81,'15','Tỉnh Yên Bái',216),(82,'17','Tỉnh Hoà Bình',216),(83,'19','Tỉnh Thái Nguyên',216),(84,'20','Tỉnh Lạng Sơn',216),(85,'22','Tỉnh Quảng Ninh',216),(86,'24','Tỉnh Bắc Giang',216),(87,'25','Tỉnh Phú Thọ',216),(88,'26','Tỉnh Vĩnh Phúc',216),(89,'27','Tỉnh Bắc Ninh',216),(90,'30','Tỉnh Hải Dương',216),(91,'31','Thành phố Hải Phòng',216),(92,'33','Tỉnh Hưng Yên',216),(93,'34','Tỉnh Thái Bình',216),(94,'35','Tỉnh Hà Nam',216),(95,'36','Tỉnh Nam Định',216),(96,'37','Tỉnh Ninh Bình',216),(97,'38','Tỉnh Thanh Hóa',216),(98,'40','Tỉnh Nghệ An',216),(99,'42','Tỉnh Hà Tĩnh',216),(100,'44','Tỉnh Quảng Bình',216),(101,'45','Tỉnh Quảng Trị',216),(102,'46','Tỉnh Thừa Thiên Huế',216),(103,'48','Thành phố Đà Nẵng',216),(104,'49','Tỉnh Quảng Nam',216),(105,'51','Tỉnh Quảng Ngãi',216),(106,'52','Tỉnh Bình Định',216),(107,'54','Tỉnh Phú Yên',216),(108,'56','Tỉnh Khánh Hòa',216),(109,'58','Tỉnh Ninh Thuận',216),(110,'60','Tỉnh Bình Thuận',216),(111,'62','Tỉnh Kon Tum',216),(112,'64','Tỉnh Gia Lai',216),(113,'66','Tỉnh Đắk Lắk',216),(114,'67','Tỉnh Đắk Nông',216),(115,'68','Tỉnh Lâm Đồng',216),(116,'70','Tỉnh Bình Phước',216),(117,'72','Tỉnh Tây Ninh',216),(118,'75','Tỉnh Đồng Nai',216),(119,'77','Tỉnh Bà Rịa - Vũng Tàu',216),(120,'79','Thành phố Hồ Chí Minh',216),(121,'80','Tỉnh Long An',216),(122,'82','Tỉnh Tiền Giang',216),(123,'83','Tỉnh Bến Tre',216),(124,'84','Tỉnh Trà Vinh',216),(125,'86','Tỉnh Vĩnh Long',216),(126,'87','Tỉnh Đồng Tháp',216),(127,'89','Tỉnh An Giang',216),(128,'91','Tỉnh Kiên Giang',216),(129,'92','Thành phố Cần Thơ',216),(130,'93','Tỉnh Hậu Giang',216),(131,'94','Tỉnh Sóc Trăng',216),(132,'95','Tỉnh Bạc Liêu',216),(133,'96','Tỉnh Cà Mau',216),(134,NULL,' Ho Chi Minh City 715100',216);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `updated_at` datetime(6) DEFAULT NULL,
  `about` varchar(1024) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(48) NOT NULL,
  `is_supreme_host` tinyint(1) DEFAULT '0',
  `is_verified` tinyint(1) DEFAULT '0',
  `last_name` varchar(48) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `phone_verified` tinyint(1) DEFAULT '0',
  `supreme_host` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  KEY `FKe8vydtk7hf0y16bfm558sywbb` (`address_id`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKe8vydtk7hf0y16bfm558sywbb` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'2021-09-18 17:04:41.193000',1,'2021-12-04 15:35:12.548000','Tôi tên là 陶泉 御所坊','avatar.png','2000-05-22 00:00:00.000000','kongngoxilau@gmail.com','陶泉',0,0,'御所坊','$2a$10$b5eh6GseRPOoKqEKzVfAreAy6S1w2VkUJkfavXBBHcQqmF/i5EE7O','0353996236','MALE',2,3,0,0),(17,'2021-10-22 16:41:45.427000',1,'2021-12-04 09:52:12.382000',NULL,'arturo-rodriguez-dHKMgpt0NEo-unsplash.jpg','2021-10-04 00:00:00.000000','thuan.leminhthuan.10.2999999@gmail.com','Thuận',0,0,'Lê','$2a$10$9i3.Xw1nfa/hGwgThfOVJ.KxqJvjAnHHfw/o47Z/tEAPKirTKhn9y','0353996239','MALE',8,2,1,0),(28,'2021-12-05 11:40:29.412000',1,'2021-12-05 11:40:29.412000',NULL,NULL,'2021-11-28 00:00:00.000000','thuan.leminhthuan.99999@gmail.com','Lê',0,0,'Thuận','$2a$10$30pjAysS2bEUkfZz7OTsE.Sjnw10FKrDqkXCN0mKL2qM4bxjg9ree','0353996236','MALE',NULL,2,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_favorite_rooms`
--

DROP TABLE IF EXISTS `users_favorite_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `users_favorite_rooms` (
  `user_id` int NOT NULL,
  `room_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`room_id`),
  KEY `FKdc4yxtd46kdpr2ygmmsvfvpei` (`room_id`),
  CONSTRAINT `FKdc4yxtd46kdpr2ygmmsvfvpei` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  CONSTRAINT `FKpaue0mr2uyjg7rurcp7gfl2g5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_favorite_rooms`
--

LOCK TABLES `users_favorite_rooms` WRITE;
/*!40000 ALTER TABLE `users_favorite_rooms` DISABLE KEYS */;
INSERT INTO `users_favorite_rooms` VALUES (28,1),(17,4),(20,4),(21,4),(27,4),(28,4);
/*!40000 ALTER TABLE `users_favorite_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06  8:40:00
