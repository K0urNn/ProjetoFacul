-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: formulario-diego
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(110) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Diego','diego@gmail.com','123456789','123456789','masculino','1998-01-01','d'),(2,'Amanda','amanda@gmail.com','123456789','123456789','feminino','1998-01-01','d');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(110) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (14,'Teste3','teste3@gmail.com','e10adc3949ba59abbe56e057f20f883e','11965426500','masculino','2003-04-15','r','r','r'),(15,'Teste1','teste1@gmail.com','e10adc3949ba59abbe56e057f20f883e','11965426500','masculino','2003-04-15','r','r','r'),(16,'Teste4','teste4@gmail.com','e10adc3949ba59abbe56e057f20f883e','11965426500','masculino','2003-04-15','d','d','d'),(17,'Teste5','teste5@gmail.com','e10adc3949ba59abbe56e057f20f883e','11965426500','masculino','2003-04-15','g','g','g'),(18,'Teste5','teste5@gmail.com','e10adc3949ba59abbe56e057f20f883e','11965426500','masculino','2003-04-15','g','g','g');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartos`
--

DROP TABLE IF EXISTS `quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quartos` (
  `idquartos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idquartos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartos`
--

LOCK TABLES `quartos` WRITE;
/*!40000 ALTER TABLE `quartos` DISABLE KEYS */;
INSERT INTO `quartos` VALUES (1,'Quarto_de_Luxo_1'),(2,'Quarto_de_Luxo_2'),(3,'Quarto_de_Luxo_3'),(4,'Quarto_de_Básico_1'),(5,'Quarto_de_Básico_2');
/*!40000 ALTER TABLE `quartos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 18:39:27
