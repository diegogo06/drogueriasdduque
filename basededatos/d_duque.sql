CREATE DATABASE  IF NOT EXISTS `d_duque` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `d_duque`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: d_duque
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.8-MariaDB

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
-- Table structure for table `tbl_administrador`
--

DROP TABLE IF EXISTS `tbl_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_administrador` (
  `id_administrador` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre_administrador` varchar(50) NOT NULL,
  `pin` int(5) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id_administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_administrador`
--

LOCK TABLES `tbl_administrador` WRITE;
/*!40000 ALTER TABLE `tbl_administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categorias`
--

DROP TABLE IF EXISTS `tbl_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categorias` (
  `id_categorias` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categorias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categorias`
--

LOCK TABLES `tbl_categorias` WRITE;
/*!40000 ALTER TABLE `tbl_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_imagenes`
--

DROP TABLE IF EXISTS `tbl_imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_imagenes` (
  `id_imagen` tinyint(4) NOT NULL,
  `nombre_imagen` varchar(45) NOT NULL,
  PRIMARY KEY (`id_imagen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_imagenes`
--

LOCK TABLES `tbl_imagenes` WRITE;
/*!40000 ALTER TABLE `tbl_imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productos`
--

DROP TABLE IF EXISTS `tbl_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productos` (
  `id_producto` int(10) NOT NULL AUTO_INCREMENT,
  `valor` decimal(12,3) NOT NULL,
  `id_imagen` tinyint(4) NOT NULL,
  `id_categoria` tinyint(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productos`
--

LOCK TABLES `tbl_productos` WRITE;
/*!40000 ALTER TABLE `tbl_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promociones`
--

DROP TABLE IF EXISTS `tbl_promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promociones` (
  `id_promocion` tinyint(4) NOT NULL,
  `id_producto` varchar(45) NOT NULL,
  PRIMARY KEY (`id_promocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promociones`
--

LOCK TABLES `tbl_promociones` WRITE;
/*!40000 ALTER TABLE `tbl_promociones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_promociones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-09 19:22:58
