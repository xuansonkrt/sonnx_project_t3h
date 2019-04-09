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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_cart`
--

LOCK TABLES `dbo_cart` WRITE;
/*!40000 ALTER TABLE `dbo_cart` DISABLE KEYS */;
INSERT INTO `dbo_cart` VALUES (1,'5e3c8e56-695a-4dd2-9adc-e9f15833ad77',NULL,NULL),(2,'894f6557-34fb-41a8-8cc2-0e60bf98382c','sonnx',NULL),(3,'3a347b3a-004d-4379-bdc9-d407d8ecb03f',NULL,NULL),(4,'020a85e0-03a3-40d0-97f1-b690cb78a14c',NULL,NULL),(5,'0e7779e4-5db0-4a0b-9161-4182b6124c12','ahihi',NULL),(6,'548f1d50-23ec-4e7f-bd47-136ce4cf71de',NULL,NULL),(7,'a1b67d89-154a-4073-b782-ea40f9086ba4',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_cart_product`
--

LOCK TABLES `dbo_cart_product` WRITE;
/*!40000 ALTER TABLE `dbo_cart_product` DISABLE KEYS */;
INSERT INTO `dbo_cart_product` VALUES (1,2,10,5),(2,2,13,2),(3,2,14,2),(4,2,11,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_delivery_status`
--

LOCK TABLES `dbo_delivery_status` WRITE;
/*!40000 ALTER TABLE `dbo_delivery_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_order`
--

DROP TABLE IF EXISTS `dbo_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order`
--

LOCK TABLES `dbo_order` WRITE;
/*!40000 ALTER TABLE `dbo_order` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order_delivery_status`
--

LOCK TABLES `dbo_order_delivery_status` WRITE;
/*!40000 ALTER TABLE `dbo_order_delivery_status` DISABLE KEYS */;
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
  `product_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order_product`
--

LOCK TABLES `dbo_order_product` WRITE;
/*!40000 ALTER TABLE `dbo_order_product` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product`
--

LOCK TABLES `dbo_product` WRITE;
/*!40000 ALTER TABLE `dbo_product` DISABLE KEYS */;
INSERT INTO `dbo_product` VALUES (19,'Juno Sneaker Active Model TT03008 - Mesh Basic','Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645804-Juno Sneaker Active-2.jpg',550000.00,'2019-04-07 21:03:42',9,11,NULL),(20,'SKULL LONG BOOTS NMAR106','SKULL LONG BOOTS NMAR106','/link/1554645902-SKULL LONG BOOTS NMAR106.jpg',550000.00,'2019-04-07 21:05:12',11,12,NULL),(21,'Giày Thể Thao Adidas ADIDAS CG3006','Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647067-Adidas ADIDAS CG3006.jpg',1000000.00,'2019-04-07 21:24:46',9,10,NULL),(22,'GIÀY TÂY NAM CAO CẤP ANTONI FERNANDO AF-3012','Antoni Fernando Vietnam - nhà sản xuất giày da handmade với nhiều năm kinh nghiệm thực hiện gia công cho thương hiệu nước ngoài.','/link/1554647299-ANTONI FERNANDO AF-3012.jpg',550000.00,'2019-04-07 21:29:12',10,12,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product_entity`
--

LOCK TABLES `dbo_product_entity` WRITE;
/*!40000 ALTER TABLE `dbo_product_entity` DISABLE KEYS */;
INSERT INTO `dbo_product_entity` VALUES (10,20,19,7,5),(11,11,19,8,5),(12,20,19,6,10),(13,20,20,7,12),(14,21,20,8,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product_image`
--

LOCK TABLES `dbo_product_image` WRITE;
/*!40000 ALTER TABLE `dbo_product_image` DISABLE KEYS */;
INSERT INTO `dbo_product_image` VALUES (57,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645832-Juno Sneaker Active.jpg','2019-04-07 21:03:53'),(58,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645837-Juno Sneaker Active-3.jpg','2019-04-07 21:03:58'),(59,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645841-Juno Sneaker Active-4.jpg','2019-04-07 21:04:02'),(60,19,'Juno Sneaker Active Model TT03008 - Mesh Basic','/link/1554645847-Juno Sneaker Active-5.jpg','2019-04-07 21:04:08'),(61,20,'SKULL LONG BOOTS NMAR106','/link/1554645919-SKULL LONG BOOTS NMAR106-2.jpg','2019-04-07 21:05:20'),(62,20,'SKULL LONG BOOTS NMAR106','/link/1554645923-SKULL LONG BOOTS NMAR106-3.jpg','2019-04-07 21:05:24'),(63,20,'SKULL LONG BOOTS NMAR106','/link/1554645927-SKULL LONG BOOTS NMAR106-4.jpg','2019-04-07 21:05:28'),(64,21,'Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647155-Adidas ADIDAS CG3006-2.jpg','2019-04-07 21:25:56'),(65,21,'Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647161-Adidas ADIDAS CG3006-3.jpg','2019-04-07 21:26:03'),(66,21,'Giày Thể Thao Adidas ADIDAS CG3006','/link/1554647169-Adidas ADIDAS CG3006-4.jpg','2019-04-07 21:26:10'),(67,22,'Antoni Fernando Vietnam ','/link/1554647372-ANTONI FERNANDO AF-3012-2.jpg','2019-04-07 21:29:33'),(68,22,'Antoni Fernando Vietnam ','/link/1554647380-ANTONI FERNANDO AF-3012-3.jpg','2019-04-07 21:29:42'),(69,22,'Antoni Fernando Vietnam ','/link/1554647388-ANTONI FERNANDO AF-3012-4.jpg','2019-04-07 21:29:50');
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
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_rate`
--

LOCK TABLES `dbo_rate` WRITE;
/*!40000 ALTER TABLE `dbo_rate` DISABLE KEYS */;
INSERT INTO `dbo_rate` VALUES (5,5,'Một sản phẩm dù tốt đến mấy nhưng nếu không được khách hàng lựa chọn và đem lại lợi nhuận cho doanh nghiệp thì chưa thể gọi là thành công.','2019-04-07 23:22:29',19,1),(6,4,'Chất lượng sản phẩm là một trong những yếu tố quan trọng quyết định đến sự thành công của sản phẩm đó. Thế nhưng, không phải một sản phẩm tốt lúc nào cũng được nhiều người tiêu dùng lựa chọn. Làm thế nào để bán được hàng là bài toán khó đối với rất nhiều doanh nghiệp, đặc biệt là các doanh nghiệp vừa và nhỏ tại Việt Nam.','2019-04-07 23:26:04',19,2),(7,5,'ahihi','2019-04-08 18:48:08',19,1);
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

-- Dump completed on 2019-04-09  8:30:27
