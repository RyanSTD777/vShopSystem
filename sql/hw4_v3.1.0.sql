CREATE DATABASE  IF NOT EXISTS `vshop_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vshop_db`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: vshop_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `employ`
--

DROP TABLE IF EXISTS `employ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employ` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employno` varchar(45) NOT NULL,
  `ename` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employno_UNIQUE` (`employno`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employ`
--

LOCK TABLES `employ` WRITE;
/*!40000 ALTER TABLE `employ` DISABLE KEYS */;
INSERT INTO `employ` VALUES (1,'E20250815001','後台管理員','Admin','Admin','all'),(2,'E20250817001','員工01','Staff01','Staff01','part');
/*!40000 ALTER TABLE `employ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberno` varchar(45) NOT NULL,
  `mname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `viplevelno` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `memberno_UNIQUE` (`memberno`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'M202508140190001','Ryan','ryan','777','0911222111','台中','VIP001'),(2,'M202508150803001','Jhon','jhon','111','0911333222','台中','VIP000'),(3,'M202508171201001','Jason','jason','4321','0988000888','桃園','VIP002'),(4,'M202508181547001','Tom','tom','1234','0911222333','台中','VIP003'),(6,'M202508241110001','Peter','peter','123','0911000111','新竹','VIP000');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `memberdetail`
--

DROP TABLE IF EXISTS `memberdetail`;
/*!50001 DROP VIEW IF EXISTS `memberdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memberdetail` AS SELECT 
 1 AS `memberno`,
 1 AS `mname`,
 1 AS `username`,
 1 AS `password`,
 1 AS `phone`,
 1 AS `address`,
 1 AS `viplevelno`,
 1 AS `vipname`,
 1 AS `vip_discount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `porder`
--

DROP TABLE IF EXISTS `porder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `porder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `porderno` varchar(45) NOT NULL,
  `memberno` varchar(45) NOT NULL,
  `productno` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  `pordertime` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porder`
--

LOCK TABLES `porder` WRITE;
/*!40000 ALTER TABLE `porder` DISABLE KEYS */;
INSERT INTO `porder` VALUES (8,'P1755783320513','M202508140190001','PD0006',5,'2025-08-19 21:22:38'),(10,'P1755783320513','M202508140190001','PD0007',1,'2025-08-19 21:22:38'),(11,'P1755826667377','M202508140190001','PD0004',5,'2025-08-20 19:10:51'),(12,'P1755826667377','M202508140190001','PD0002',5,'2025-08-20 19:10:51'),(13,'P1755869914158','M202508150803001','PD0008',8,'2025-08-20 19:22:11'),(14,'P1755869914158','M202508150803001','PD0009',2,'2025-08-20 19:22:11'),(15,'P1755950702140','M202508140190001','PD0008',3,'2025-08-23 21:02:06'),(16,'P1755950702140','M202508140190001','PD0006',7,'2025-08-23 21:02:06'),(17,'P1755950702140','M202508140190001','PD0002',3,'2025-08-23 21:02:06'),(18,'P1755952127357','M202508140190001','PD0001',2,'2025-08-23 21:11:26'),(19,'P1755952127357','M202508140190001','PD0004',3,'2025-08-23 21:11:26'),(20,'P1755952127357','M202508140190001','PD0009',2,'2025-08-23 21:11:26'),(21,'P1755952127357','M202508140190001','PD0002',1,'2025-08-23 21:11:26'),(22,'P1755952616560','M202508140190001','PD0003',2,'2025-08-24 10:41:10'),(23,'P1755952616560','M202508140190001','PD0004',2,'2025-08-24 10:41:10'),(24,'P1755952616560','M202508140190001','PD0009',3,'2025-08-24 10:41:10'),(25,'P1755952683985','M202508140190001','PD0003',3,'2025-08-24 10:42:31'),(26,'P1755954764846','M202508140190001','PD0003',1,'2025-08-24 10:44:07'),(30,'P1756007268964','M202508241110001','PD0002',4,'2025-08-24 10:45:37'),(32,'P1756012210677','M202508241110001','PD0002',2,'2025-08-24 10:48:19'),(33,'P1756012210677','M202508241110001','PD0006',2,'2025-08-24 10:48:19'),(34,'P1756012210677','M202508241110001','PD0008',3,'2025-08-24 10:48:19'),(35,'P1756021747554','M202508241110001','PD0001',2,'2025-08-24 15:49:07'),(36,'P1756021747554','M202508241110001','PD0003',2,'2025-08-24 15:49:07'),(37,'P1756021747554','M202508241110001','PD0009',2,'2025-08-24 15:49:07'),(38,'P1756022001657','M202508241110001','PD0002',1,'2025-08-24 15:53:21'),(39,'P1756022001657','M202508241110001','PD0001',2,'2025-08-24 15:53:21'),(40,'P1756022001657','M202508241110001','PD0008',2,'2025-08-24 15:53:21'),(41,'P1756022171813','M202508241110001','PD0003',2,'2025-08-24 15:56:11'),(42,'P1756022171813','M202508241110001','PD0004',1,'2025-08-24 15:56:11'),(43,'P1756022171813','M202508241110001','PD0001',1,'2025-08-24 15:56:11'),(44,'P1756023125514','M202508241110001','PD0003',3,'2025-08-24 16:12:05'),(45,'P1756023125514','M202508241110001','PD0007',1,'2025-08-24 16:12:05'),(46,'P1756023322654','M202508241110001','PD0003',1,'2025-08-24 16:15:22'),(47,'P1756023322654','M202508241110001','PD0007',1,'2025-08-24 16:15:22'),(48,'P1756023322654','M202508241110001','PD0001',1,'2025-08-24 16:15:22');
/*!40000 ALTER TABLE `porder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `porderdetail`
--

DROP TABLE IF EXISTS `porderdetail`;
/*!50001 DROP VIEW IF EXISTS `porderdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `porderdetail` AS SELECT 
 1 AS `porder_no`,
 1 AS `member_no`,
 1 AS `member_name`,
 1 AS `product_no`,
 1 AS `product_name`,
 1 AS `product_price`,
 1 AS `product_amount`,
 1 AS `member_discount`,
 1 AS `total`,
 1 AS `porder_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productno` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productno_UNIQUE` (`productno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'PD0001','A菜',26,31),(2,'PD0002','胡蘿蔔',10,28),(3,'PD0003','芹菜',12,29),(4,'PD0004','蘿蔔',9,32),(5,'PD0005','洋蔥',11,30),(6,'PD0006','青江菜',24,26),(7,'PD0007','甜豆',29,27),(8,'PD0008','空心菜',34,25),(9,'PD0009','青蔥',38,28);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viplevel`
--

DROP TABLE IF EXISTS `viplevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viplevel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `viplevelno` varchar(45) NOT NULL,
  `vname` varchar(45) NOT NULL,
  `discount` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `viplevelno_UNIQUE` (`viplevelno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viplevel`
--

LOCK TABLES `viplevel` WRITE;
/*!40000 ALTER TABLE `viplevel` DISABLE KEYS */;
INSERT INTO `viplevel` VALUES (1,'VIP000','普通會員',1),(2,'VIP001','銅會員',0.95),(3,'VIP002','銀會員',0.9),(4,'VIP003','金會員',0.85);
/*!40000 ALTER TABLE `viplevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `memberdetail`
--

/*!50001 DROP VIEW IF EXISTS `memberdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memberdetail` AS select `m`.`memberno` AS `memberno`,`m`.`mname` AS `mname`,`m`.`username` AS `username`,`m`.`password` AS `password`,`m`.`phone` AS `phone`,`m`.`address` AS `address`,`m`.`viplevelno` AS `viplevelno`,`v`.`vname` AS `vipname`,(case when (`v`.`discount` = 1) then '無折扣' else concat(trim(trailing '0' from substring_index(cast(`v`.`discount` as char charset utf8mb4),'.',-(1))),'折') end) AS `vip_discount` from (`member` `m` join `viplevel` `v` on((`m`.`viplevelno` = `v`.`viplevelno`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `porderdetail`
--

/*!50001 DROP VIEW IF EXISTS `porderdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `porderdetail` AS select `p`.`porderno` AS `porder_no`,`m`.`memberno` AS `member_no`,`m`.`mname` AS `member_name`,`pr`.`productno` AS `product_no`,`pr`.`pname` AS `product_name`,`pr`.`price` AS `product_price`,`p`.`amount` AS `product_amount`,`v`.`discount` AS `member_discount`,round(((`pr`.`price` * `p`.`amount`) * `v`.`discount`),2) AS `total`,`p`.`pordertime` AS `porder_time` from (((`porder` `p` join `member` `m` on((`p`.`memberno` = `m`.`memberno`))) join `product` `pr` on((`p`.`productno` = `pr`.`productno`))) join `viplevel` `v` on((`m`.`viplevelno` = `v`.`viplevelno`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-24 16:27:34
