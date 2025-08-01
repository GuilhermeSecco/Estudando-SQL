CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `horas` int unsigned DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Bancos de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2018),(11,'C','Curso de C',25,10,2012);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_assiste_c`
--

DROP TABLE IF EXISTS `p_assiste_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p_assiste_c` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `idpessoas` int DEFAULT NULL,
  `idcurso` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idpessoas` (`idpessoas`),
  KEY `idcurso` (`idcurso`),
  CONSTRAINT `p_assiste_c_ibfk_1` FOREIGN KEY (`idpessoas`) REFERENCES `pessoas` (`id`),
  CONSTRAINT `p_assiste_c_ibfk_2` FOREIGN KEY (`idcurso`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_assiste_c`
--

LOCK TABLES `p_assiste_c` WRITE;
/*!40000 ALTER TABLE `p_assiste_c` DISABLE KEYS */;
INSERT INTO `p_assiste_c` VALUES (1,'2025-02-25',5,4),(2,'2025-02-20',2,7),(3,'2025-02-28',6,1),(4,'2025-02-25',4,3),(5,'2025-02-26',1,2);
/*!40000 ALTER TABLE `p_assiste_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `curso_preferido` int DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`),
  KEY `curso_preferido` (`curso_preferido`),
  CONSTRAINT `pessoas_ibfk_1` FOREIGN KEY (`curso_preferido`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'Godofredo de Santos','Programador',4,'1984-01-02','M',78.50,1.83,'Brasil'),(2,'Maria da Silva','Diarista',2,'1999-12-30','F',55.20,1.65,'Portugal'),(3,'Creusa Oliveira','Professora',1,'1920-07-12','F',48.90,1.55,'Brasil'),(4,'Valter da Silva','Eletricista',3,'1955-01-05','M',88.20,1.80,'Bolivia'),(5,'Bob Clay','Caixa',7,'1978-04-07','M',104.20,1.70,'Estados Unidos'),(6,'Ana Texas','Programador',5,'2005-03-25','F',57.20,1.55,'Canada'),(7,'Richard da Silva','Dentista',1,'1991-11-28','M',78.50,1.87,'Inglaterra'),(8,'Isadora Pinheiro','Bailarina',6,'2002-10-05','F',55.80,1.67,'Brasil'),(9,'Iago da Silva','Programador',7,'1998-02-27','M',90.40,1.82,'Brasil'),(10,'Iara Terras','Pintora',4,'1987-07-22','F',67.50,1.72,'Brasil'),(11,'Leticia da Silva','Professora',5,'1992-06-14','F',72.30,1.92,'Chile'),(12,'Leandro Fernandes','Dentista',2,'2001-02-17','M',85.20,2.02,'Chile'),(13,'Gustavo da Silva','Programador',1,'2000-03-03','M',105.00,1.95,'Canada'),(14,'Leticia Pinheiro','Pintora',3,'2005-08-30','F',62.00,1.73,'Canada'),(15,'Maria Pinheiro','Diarista',4,'1988-02-01','F',57.20,1.68,'Portugal');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-28 15:00:50
