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
-- Dumping data for table `dbo_cart`
--

LOCK TABLES `dbo_cart` WRITE;
/*!40000 ALTER TABLE `dbo_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_cart_product`
--

LOCK TABLES `dbo_cart_product` WRITE;
/*!40000 ALTER TABLE `dbo_cart_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_category`
--

LOCK TABLES `dbo_category` WRITE;
/*!40000 ALTER TABLE `dbo_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_color`
--

LOCK TABLES `dbo_color` WRITE;
/*!40000 ALTER TABLE `dbo_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_delivery_status`
--

LOCK TABLES `dbo_delivery_status` WRITE;
/*!40000 ALTER TABLE `dbo_delivery_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_order`
--

LOCK TABLES `dbo_order` WRITE;
/*!40000 ALTER TABLE `dbo_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_order_delivery_status`
--

LOCK TABLES `dbo_order_delivery_status` WRITE;
/*!40000 ALTER TABLE `dbo_order_delivery_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_order_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_order_product`
--

LOCK TABLES `dbo_order_product` WRITE;
/*!40000 ALTER TABLE `dbo_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_product`
--

LOCK TABLES `dbo_product` WRITE;
/*!40000 ALTER TABLE `dbo_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_product_entity`
--

LOCK TABLES `dbo_product_entity` WRITE;
/*!40000 ALTER TABLE `dbo_product_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_product_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_product_image`
--

LOCK TABLES `dbo_product_image` WRITE;
/*!40000 ALTER TABLE `dbo_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_promotion`
--

LOCK TABLES `dbo_promotion` WRITE;
/*!40000 ALTER TABLE `dbo_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_rate`
--

LOCK TABLES `dbo_rate` WRITE;
/*!40000 ALTER TABLE `dbo_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_role`
--

LOCK TABLES `dbo_role` WRITE;
/*!40000 ALTER TABLE `dbo_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_size`
--

LOCK TABLES `dbo_size` WRITE;
/*!40000 ALTER TABLE `dbo_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_supply`
--

LOCK TABLES `dbo_supply` WRITE;
/*!40000 ALTER TABLE `dbo_supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_user`
--

LOCK TABLES `dbo_user` WRITE;
/*!40000 ALTER TABLE `dbo_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dbo_user_role`
--

LOCK TABLES `dbo_user_role` WRITE;
/*!40000 ALTER TABLE `dbo_user_role` DISABLE KEYS */;
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

-- Dump completed on 2019-03-18 23:40:26
