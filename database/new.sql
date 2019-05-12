-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: db_ssms
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbo_cart`
--

DROP TABLE IF EXISTS `dbo_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_cart`
--

LOCK TABLES `dbo_cart` WRITE;
/*!40000 ALTER TABLE `dbo_cart` DISABLE KEYS */;
INSERT INTO `dbo_cart` VALUES (1,'5e3c8e56-695a-4dd2-9adc-e9f15833ad77',NULL,NULL),(3,'3a347b3a-004d-4379-bdc9-d407d8ecb03f',NULL,NULL),(4,'020a85e0-03a3-40d0-97f1-b690cb78a14c',NULL,NULL),(5,'0e7779e4-5db0-4a0b-9161-4182b6124c12','ahihi',NULL),(6,'548f1d50-23ec-4e7f-bd47-136ce4cf71de',NULL,NULL),(7,'a1b67d89-154a-4073-b782-ea40f9086ba4',NULL,NULL),(8,'01d515b2-e2fc-46c6-8f5c-43521e6f78a3',NULL,NULL),(9,'30b050b5-7bd0-4003-bb9f-4b1aba2cfc4f',NULL,NULL),(11,'a4477b3f-7d3b-444b-b68b-c2e65c11570e',NULL,NULL),(13,'1f755b4d-31ce-483d-92ee-2e12f4f7e2fa',NULL,NULL),(17,'6009f6a8-0b23-4113-a166-cd9e8db2efa8',NULL,NULL),(28,'ea65c774-0941-4b4f-a169-7deba71df05c',NULL,NULL),(29,'cf554125-2ffc-43af-8d4e-09655eb1ca51',NULL,NULL),(31,'9bb9c1ca-52cf-4cd3-b9d6-af8f74eaffa5',NULL,NULL),(33,'43c7fd60-b3dd-4c80-8e71-73b4c3835dba',NULL,NULL),(34,'2ee586cf-3a6f-4506-9991-6ad9489e4174',NULL,NULL),(35,'b06af98e-a96a-44ac-9c80-3e1dc2d1175b',NULL,NULL),(36,'a4fc699b-3b32-421b-9300-b9c373a2d23e',NULL,NULL),(37,'78d29a7a-d8f0-4928-a57a-26136a790210',NULL,NULL),(38,'703d5001-158e-4ae0-baf2-45f66722e67b',NULL,NULL),(39,'d3f4d2f5-fc15-437c-8d1e-997257f12479',NULL,NULL),(40,'55913df0-c710-4605-a0cf-319a7b2b7dca',NULL,NULL),(41,'9f0d16cc-d259-4d67-980f-d87b95a2ee96',NULL,NULL),(42,'00cfa1cb-0400-4df1-b57d-7ec3c136bf0e',NULL,NULL),(43,'085dfdee-5918-4e8e-b7cc-aaa97c45e6e8',NULL,NULL),(46,'635e9369-e90c-4a4c-92aa-8e0bb634e5f4',NULL,NULL),(52,'8cf76b9a-9e0c-4d9b-97f5-4f55221011f9',NULL,NULL),(54,'5ece1b05-318c-40e6-965c-deb24eb3c66b','sonnx',NULL),(55,'a409d795-1786-45ea-90c6-6b1b2c886c76',NULL,NULL);
/*!40000 ALTER TABLE `dbo_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_cart_product`
--

DROP TABLE IF EXISTS `dbo_cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_cart_product` (
  `cart_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `product_entity_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_cart_product`
--

LOCK TABLES `dbo_cart_product` WRITE;
/*!40000 ALTER TABLE `dbo_cart_product` DISABLE KEYS */;
INSERT INTO `dbo_cart_product` VALUES (23,8,10,1),(26,8,15,1),(27,29,10,1),(31,34,10,1),(32,37,13,3);
/*!40000 ALTER TABLE `dbo_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_category`
--

DROP TABLE IF EXISTS `dbo_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_category`
--

LOCK TABLES `dbo_category` WRITE;
/*!40000 ALTER TABLE `dbo_category` DISABLE KEYS */;
INSERT INTO `dbo_category` VALUES (9,'Giày thể thao','Giày thể thao','2019-04-07 20:59:38'),(10,'Giày da','Giày da','2019-04-07 20:59:48'),(11,'Giày nghệ thuật','Giày nghệ thuật','2019-04-07 20:59:59');
/*!40000 ALTER TABLE `dbo_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_color`
--

DROP TABLE IF EXISTS `dbo_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_color`
--

LOCK TABLES `dbo_color` WRITE;
/*!40000 ALTER TABLE `dbo_color` DISABLE KEYS */;
INSERT INTO `dbo_color` VALUES (5,'Đen','Màu đen','2019-04-07 20:55:14'),(6,'Vàng','Màu vàng','2019-04-07 20:55:35'),(7,'Đỏ','Màu đỏ','2019-04-07 20:55:54'),(8,'Hồng','Màu hồng','2019-04-07 20:56:07'),(10,'Vàng nhạt','Màu vàng nhạt','2019-04-07 20:56:42'),(11,'Xanh rêu','Màu xanh rêu','2019-04-07 20:56:56'),(12,'Printed Multi Colorful','Printed Multi Colorful','2019-04-07 21:13:45');
/*!40000 ALTER TABLE `dbo_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_delivery_status`
--

DROP TABLE IF EXISTS `dbo_delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_delivery_status` (
  `delivery_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`delivery_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_delivery_status`
--

LOCK TABLES `dbo_delivery_status` WRITE;
/*!40000 ALTER TABLE `dbo_delivery_status` DISABLE KEYS */;
INSERT INTO `dbo_delivery_status` VALUES (1,'Đang xử lý'),(2,'Đang giao hàng'),(3,'Đã giao hàng'),(4,'Hủy');
/*!40000 ALTER TABLE `dbo_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_favourite`
--

DROP TABLE IF EXISTS `dbo_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_favourite` (
  `favourite_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`favourite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_favourite`
--

LOCK TABLES `dbo_favourite` WRITE;
/*!40000 ALTER TABLE `dbo_favourite` DISABLE KEYS */;
INSERT INTO `dbo_favourite` VALUES (1,22,NULL,'2ee586cf-3a6f-4506-9991-6ad9489e4174','2019-04-22 21:43:10'),(2,25,'sonnx','fac70d80-2619-41d7-932d-82f6cbfb3417','2019-04-22 21:44:37'),(3,20,'sonnx','fac70d80-2619-41d7-932d-82f6cbfb3417','2019-04-22 21:45:48'),(4,21,NULL,'fac70d80-2619-41d7-932d-82f6cbfb3417','2019-04-22 23:42:49'),(5,21,NULL,'fac70d80-2619-41d7-932d-82f6cbfb3417','2019-04-22 23:58:56');
/*!40000 ALTER TABLE `dbo_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_message`
--

DROP TABLE IF EXISTS `dbo_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `trash` int(11) DEFAULT '0',
  `important` int(11) DEFAULT '0',
  `sent` int(11) DEFAULT '0',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_message`
--

LOCK TABLES `dbo_message` WRITE;
/*!40000 ALTER TABLE `dbo_message` DISABLE KEYS */;
INSERT INTO `dbo_message` VALUES (1,'xuansonkaratedo.com@gmail.com','13123','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,'2019-04-20 23:26:52',0,1,0),(2,'xuansonkaratedo.com@gmail.com','adfad','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,'2019-04-20 23:29:01',0,1,0),(3,'xuansonkaratedo.com@gmail.com','adfad','',1,'2019-04-20 23:29:04',0,1,0),(4,'xuansonkaratedo.com@gmail.com','12312','ádfadfa',1,'2019-04-20 23:29:35',0,0,0),(5,'xuansonkaratedo.com@gmail.com','adfadf','àdgdfgsf sdfa  ádfad  adf ',0,'2019-04-20 23:30:07',0,0,0),(6,'xuansonkaratedo.com@gmail.com','sdfs','sdfsd',1,'2019-04-20 23:30:23',0,1,0),(7,'xuanson@gmail.com','123123','42dfsdf ádf sd ',0,'2019-04-20 23:31:41',0,0,0),(8,'xuansonkaratedo.com@gmail.com','2123','123213 sdf ádf dfsd ',1,'2019-04-20 23:34:27',0,0,0),(9,'xuansonkaratedo.com@gmail.com','cảm ơn người lớn','12312',0,'2019-05-11 09:50:23',0,0,0),(10,'xuansonkaratedo.com@gmail.com','cảm ơn người lớn','12345678',1,'2019-05-11 09:56:36',0,0,0),(11,'xuansonkaratedo.com@gmail.com','cảm ơn người lớn','12345',0,'2019-05-11 10:00:08',0,0,0),(12,'doctorwho.vip@gmail.com','cảm ơn người lớn','2347654321345',0,'2019-05-11 10:02:39',0,0,0),(13,'system','Không đủ số lượng','application.data.model.Order@6004e5bd',0,'2019-05-11 14:02:39',0,0,0),(14,'system','Không đủ số lượng','Đơn đặt hàng không đủ số lượng trong kho{Mã đơn hàng: 0, Tên khách hàng:\'Nguyễn Xuân Sơn\', Địa chỉ: Hưng Yên\', Số điện thoại: 0344647733\', Email: xuansonkrt@gmail.com\', Ngày đặt hàng: Sat May 11 14:45:33 ICT 2019}',0,'2019-05-11 14:45:33',0,0,0);
/*!40000 ALTER TABLE `dbo_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_order`
--

DROP TABLE IF EXISTS `dbo_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `delivery_status_id` int(11) DEFAULT NULL,
  `ship_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order`
--

LOCK TABLES `dbo_order` WRITE;
/*!40000 ALTER TABLE `dbo_order` DISABLE KEYS */;
INSERT INTO `dbo_order` VALUES (21,'sonnx','0bfd4e61-3ee7-4957-99c0-9a64c62d9218','2019-05-11 14:18:35','Nguyễn Xuân Sơn','0344647733','xuansonkrt@gmail.com','Thanh Long, Yên Mỹ, Hưng Yên',2850000.00,2,0.00),(22,NULL,'19826c20-b120-4ed8-9d70-0538d14ef72a','2019-05-11 14:20:05','Nguyễn Hữu Mạnh','0967555025','huumanh56@gmail.com','Mê Linh, Hà Nội',1400000.00,1,0.00),(23,NULL,'19826c20-b120-4ed8-9d70-0538d14ef72a','2019-05-11 14:21:57','Nguyễn Xuân Sơn','0344647733','xuansonkrt@gmail.com','195 Trần Cung, Hà Nội',3040000.00,4,0.00),(24,NULL,'8cf76b9a-9e0c-4d9b-97f5-4f55221011f9','2019-05-11 14:35:24','Nguyễn Hữu Mạnh','0344647733','doctorwho.vip@gmail.com','Mê Linh, Hà Nội',3500000.00,1,0.00),(25,NULL,'8cf76b9a-9e0c-4d9b-97f5-4f55221011f9','2019-05-11 14:37:45','Nguyễn Xuân Sơn','0344647733','xuansonkaratedo.com@gmail.com','Thanh Long, Yên Mỹ, Hưng Yên',3500000.00,1,0.00),(26,'sonnx','57656973-b009-4a13-9f16-9adfdc801830','2019-05-11 14:45:33','Nguyễn Xuân Sơn','0344647733','xuansonkrt@gmail.com','Hưng Yên',2100000.00,1,0.00);
/*!40000 ALTER TABLE `dbo_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_order_delivery_status`
--

DROP TABLE IF EXISTS `dbo_order_delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_order_delivery_status` (
  `order_delivery_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `delivery_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_delivery_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order_delivery_status`
--

LOCK TABLES `dbo_order_delivery_status` WRITE;
/*!40000 ALTER TABLE `dbo_order_delivery_status` DISABLE KEYS */;
INSERT INTO `dbo_order_delivery_status` VALUES (5,21,'2019-05-11 14:18:35',1),(6,22,'2019-05-11 14:20:05',1),(7,23,'2019-05-11 14:21:57',1),(8,21,'2019-05-11 14:22:55',2),(9,23,'2019-05-11 14:22:59',4),(10,24,'2019-05-11 14:35:24',1),(11,25,'2019-05-11 14:37:45',1),(12,26,'2019-05-11 14:45:33',1);
/*!40000 ALTER TABLE `dbo_order_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_order_product`
--

DROP TABLE IF EXISTS `dbo_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_entity_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order_product`
--

LOCK TABLES `dbo_order_product` WRITE;
/*!40000 ALTER TABLE `dbo_order_product` DISABLE KEYS */;
INSERT INTO `dbo_order_product` VALUES (1,1,10,5,2750000.00),(2,2,10,4,2200000.00),(3,3,10,4,2200000.00),(4,4,10,2,1100000.00),(5,5,10,2,1100000.00),(6,6,14,2,1100000.00),(7,7,13,1,550000.00),(8,8,10,1,550000.00),(9,9,10,1,550000.00),(10,10,14,1,550000.00),(11,11,10,1,550000.00),(12,12,10,1,550000.00),(13,13,10,2,1100000.00),(14,14,10,2,1100000.00),(15,15,15,1,550000.00),(16,16,10,1,550000.00),(17,17,10,4,2200000.00),(18,17,13,3,1650000.00),(19,18,15,4,100000.00),(20,19,10,1,550000.00),(21,20,10,2,1100000.00),(22,21,10,5,2750000.00),(23,21,15,4,100000.00),(24,22,13,4,1400000.00),(25,23,17,4,1640000.00),(26,23,14,4,1400000.00),(27,24,13,10,3500000.00),(28,25,13,10,3500000.00),(29,26,13,6,2100000.00);
/*!40000 ALTER TABLE `dbo_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_product`
--

DROP TABLE IF EXISTS `dbo_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product`
--

LOCK TABLES `dbo_product` WRITE;
/*!40000 ALTER TABLE `dbo_product` DISABLE KEYS */;
INSERT INTO `dbo_product` VALUES (19,'Juno Sneaker Active Model TT03008 - Mesh Basic','Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645804-Juno Sneaker Active-2.jpg',550000.00,'2019-04-07 21:03:42',9,11,NULL),(20,'SKULL LONG BOOTS NMAR106','SKULL LONG BOOTS NMAR106','/link/1554645902-SKULL LONG BOOTS NMAR106.jpg',350000.00,'2019-04-20 09:20:40',11,12,NULL),(21,'Giày Thể Thao Adidas ADIDAS CG3006','Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647067-Adidas ADIDAS CG3006.jpg',1000000.00,'2019-04-07 21:24:46',9,10,NULL),(22,'GIÀY TÂY NAM CAO CẤP ANTONI FERNANDO AF-3012','Antoni Fernando Vietnam - nhà sản xuất giày da handmade với nhiều năm kinh nghiệm thực hiện gia công cho thương hiệu nước ngoài.','/link/1554647299-ANTONI FERNANDO AF-3012.jpg',25000.00,'2019-04-09 16:39:39',10,12,NULL),(23,'Adidas ADIDAS CG3006','Adidas ADIDAS CG3006','/link/1554829517-Adidas ADIDAS CG3006.jpg',450000.00,'2019-04-10 00:05:38',9,11,NULL),(24,'Adidas NMD R1 “Black Scarlet”','Adidas NMD R1 “Black Scarlet”','/link/1554829604-Adidas NMD R1 “Black Scarlet”.jpg',200000.00,'2019-04-10 00:07:28',9,10,NULL),(25,'Juno Sneaker Active Model TT03013 - Knit Basic','Juno Sneaker Active Model TT03013 - Knit Basic','/link/1554829664-Juno Sneaker Active Model TT03013 - Knit Basic.jpg',400000.00,'2019-04-10 00:08:03',9,11,NULL),(26,'Juno Sneaker Active Model TT03014 - Knit ','Juno Sneaker Active Model TT03014 - Knit ','/link/1554829732-Juno Sneaker Active Model TT03014 - Knit Basic.jpg',410000.00,'2019-04-10 00:09:22',9,11,NULL);
/*!40000 ALTER TABLE `dbo_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_product_entity`
--

DROP TABLE IF EXISTS `dbo_product_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_product_entity` (
  `product_entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product_entity`
--

LOCK TABLES `dbo_product_entity` WRITE;
/*!40000 ALTER TABLE `dbo_product_entity` DISABLE KEYS */;
INSERT INTO `dbo_product_entity` VALUES (10,20,19,7,5),(11,11,19,8,5),(12,20,19,6,10),(13,5,20,7,12),(14,21,20,8,12),(15,30,22,7,5),(16,34,25,6,8),(17,23,26,7,8),(18,34,22,7,8);
/*!40000 ALTER TABLE `dbo_product_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_product_image`
--

DROP TABLE IF EXISTS `dbo_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`product_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product_image`
--

LOCK TABLES `dbo_product_image` WRITE;
/*!40000 ALTER TABLE `dbo_product_image` DISABLE KEYS */;
INSERT INTO `dbo_product_image` VALUES (57,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645832-Juno Sneaker Active.jpg','2019-04-07 21:03:53'),(58,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645837-Juno Sneaker Active-3.jpg','2019-04-07 21:03:58'),(59,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645841-Juno Sneaker Active-4.jpg','2019-04-07 21:04:02'),(60,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645847-Juno Sneaker Active-5.jpg','2019-04-07 21:04:08'),(61,20,'SKULL LONG BOOTS NMAR106','/link/1554645919-SKULL LONG BOOTS NMAR106-2.jpg','2019-04-07 21:05:20'),(62,20,'SKULL LONG BOOTS NMAR106','/link/1554645923-SKULL LONG BOOTS NMAR106-3.jpg','2019-04-07 21:05:24'),(63,20,'SKULL LONG BOOTS NMAR106','/link/1554645927-SKULL LONG BOOTS NMAR106-4.jpg','2019-04-07 21:05:28'),(64,21,'Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647155-Adidas ADIDAS CG3006-2.jpg','2019-04-07 21:25:56'),(65,21,'Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647161-Adidas ADIDAS CG3006-3.jpg','2019-04-07 21:26:03'),(66,21,'Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647169-Adidas ADIDAS CG3006-4.jpg','2019-04-07 21:26:10'),(67,22,'Antoni Fernando Vietnam ','/link/1554647372-ANTONI FERNANDO AF-3012-2.jpg','2019-04-07 21:29:33'),(68,22,'Antoni Fernando Vietnam ','/link/1554647380-ANTONI FERNANDO AF-3012-3.jpg','2019-04-07 21:29:42'),(69,22,'Antoni Fernando Vietnam ','/link/1554647388-ANTONI FERNANDO AF-3012-4.jpg','2019-04-07 21:29:50'),(70,23,'Adidas ADIDAS CG3006','/link/1554829564-Adidas ADIDAS CG3006-2.jpg','2019-04-10 00:06:05'),(71,23,'Adidas ADIDAS CG3006','/link/1554829571-Adidas ADIDAS CG3006-3.jpg','2019-04-10 00:06:12'),(72,23,'Adidas ADIDAS CG3006','/link/1554829580-Adidas ADIDAS CG3006-4.jpg','2019-04-10 00:06:22'),(73,25,'Juno Sneaker Active Model TT03013 - Knit Basic','/link/1554829706-Juno Sneaker Active Model TT03013 - Knit Basic-2.jpg','2019-04-10 00:08:27'),(74,25,'Juno Sneaker Active Model TT03013 - Knit Basic','/link/1554829715-Juno Sneaker Active Model TT03013 - Knit Basic-3.jpg','2019-04-10 00:08:37'),(75,26,'Juno Sneaker Active Model TT03014 - Knit ','/link/1554829783-Juno Sneaker Active Model TT03014 - Knit Basic-2.jpg','2019-04-10 00:09:43'),(76,26,'Juno Sneaker Active Model TT03014 - Knit ','/link/1554829792-Juno Sneaker Active Model TT03014 - Knit Basic-3.jpg','2019-04-10 00:09:53');
/*!40000 ALTER TABLE `dbo_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_promotion`
--

DROP TABLE IF EXISTS `dbo_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_promotion`
--

LOCK TABLES `dbo_promotion` WRITE;
/*!40000 ALTER TABLE `dbo_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_rate`
--

DROP TABLE IF EXISTS `dbo_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_rate` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `star` int(11) DEFAULT NULL,
  `comment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_rate`
--

LOCK TABLES `dbo_rate` WRITE;
/*!40000 ALTER TABLE `dbo_rate` DISABLE KEYS */;
INSERT INTO `dbo_rate` VALUES (5,5,'Một sản phẩm dù tốt đến mấy nhưng nếu không được khách hàng lựa chọn và đem lại lợi nhuận cho doanh nghiệp thì chưa thể gọi là thành công.','2019-04-07 23:22:29',19,1,NULL),(6,4,'Chất lượng sản phẩm là một trong những yếu tố quan trọng quyết định đến sự thành công của sản phẩm đó. Thế nhưng, không phải một sản phẩm tốt lúc nào cũng được nhiều người tiêu dùng lựa chọn. Làm thế nào để bán được hàng là bài toán khó đối với rất nhiều doanh nghiệp, đặc biệt là các doanh nghiệp vừa và nhỏ tại Việt Nam.','2019-04-07 23:26:04',19,2,NULL),(7,5,'ahihi','2019-04-08 18:48:08',19,1,NULL),(8,5,'good','2019-04-09 23:50:45',22,1,NULL),(9,1,'bad','2019-04-09 23:51:56',22,1,NULL),(10,1,'tệ','2019-04-09 23:52:10',22,1,NULL),(11,0,'123','2019-04-17 23:51:11',0,1,5),(12,0,'123456','2019-04-17 23:57:05',0,1,5),(13,4,'demo','2019-04-17 23:58:23',19,1,NULL),(14,0,'sonnx','2019-04-17 23:58:44',NULL,1,5),(15,0,'Chất lượng sản phẩm là một trong những yếu tố quan trọng quyết định đến sự thành công của sản phẩm đó.','2019-04-18 00:12:36',NULL,1,5),(16,0,'123','2019-04-18 00:14:38',NULL,1,5),(17,0,'12312','2019-04-18 00:16:47',NULL,1,13),(18,4,'đây là 1 đánh giá','2019-04-18 00:18:53',19,1,NULL);
/*!40000 ALTER TABLE `dbo_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_role`
--

DROP TABLE IF EXISTS `dbo_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_role`
--

LOCK TABLES `dbo_role` WRITE;
/*!40000 ALTER TABLE `dbo_role` DISABLE KEYS */;
INSERT INTO `dbo_role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `dbo_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_size`
--

DROP TABLE IF EXISTS `dbo_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_size`
--

LOCK TABLES `dbo_size` WRITE;
/*!40000 ALTER TABLE `dbo_size` DISABLE KEYS */;
INSERT INTO `dbo_size` VALUES (5,'38','Size 38','2019-04-07 20:57:16'),(6,'39','Size 39','2019-04-07 20:57:25'),(7,'40','Size 40','2019-04-07 20:57:33'),(8,'41','Size 41','2019-04-07 20:57:40');
/*!40000 ALTER TABLE `dbo_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_supply`
--

DROP TABLE IF EXISTS `dbo_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_supply` (
  `supply_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_supply`
--

LOCK TABLES `dbo_supply` WRITE;
/*!40000 ALTER TABLE `dbo_supply` DISABLE KEYS */;
INSERT INTO `dbo_supply` VALUES (10,'Adidas','Adidas','2019-04-07 20:57:52'),(11,'Juno','Juno','2019-04-07 20:58:00'),(12,'Turkey','Turkey','2019-04-07 20:59:23');
/*!40000 ALTER TABLE `dbo_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_user`
--

DROP TABLE IF EXISTS `dbo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_user`
--

LOCK TABLES `dbo_user` WRITE;
/*!40000 ALTER TABLE `dbo_user` DISABLE KEYS */;
INSERT INTO `dbo_user` VALUES (1,'sonnx','$2a$10$OfVMl2Nr0IKB6/JMj1CsW.XFMIpFdKctoNPG/yzEXvqKokwfNvIEG','Nguyễn Xuân Sơn','xuansonkrt@gmail.com','Hưng Yên','/link/1554646266-IMG_9405-3.jpg',1,'2019-04-07 21:10:10','0344647733','1998-01-05'),(2,'ahihi','$2a$10$yN84Y67NRK/zfNIiAiqg3eMu7Qys1qsGXVC0JRccjOcMMUDgToRl6',NULL,'xuansonkaratedo.com@gmail.com',NULL,'/link/avatar.jpg',0,'2019-04-07 23:25:31',NULL,NULL);
/*!40000 ALTER TABLE `dbo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_user_role`
--

DROP TABLE IF EXISTS `dbo_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_user_role`
--

LOCK TABLES `dbo_user_role` WRITE;
/*!40000 ALTER TABLE `dbo_user_role` DISABLE KEYS */;
INSERT INTO `dbo_user_role` VALUES (1,1,2),(2,2,2);
/*!40000 ALTER TABLE `dbo_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-12  2:28:41
