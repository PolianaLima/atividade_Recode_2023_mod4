CREATE DATABASE  IF NOT EXISTS `recode_ag_viagem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recode_ag_viagem`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: recode_ag_viagem
-- ------------------------------------------------------
-- Server version	8.0.34

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
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `Sobrenome` varchar(50) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cidade` varchar(70) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'04625541395','Poliana Lima','Silva','1992-12-05','F','21510640','RJ','Rio de Janeiro','Rua Sergio de Siqueira de Macedo',31,'','pollyanna@hotmail.com','8649');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_voo` int DEFAULT NULL,
  `numero_bilhete` int DEFAULT NULL,
  `status` varchar(20) DEFAULT 'RESERVADO',
  PRIMARY KEY (`id_reserva`),
  KEY `id_voo_idx` (`id_voo`),
  KEY `id_cliente_idx` (`id_cliente`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `id_voo` FOREIGN KEY (`id_voo`) REFERENCES `voos` (`id_voo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (11,1,1,905,'RESERVADO'),(12,1,1,948,'RESERVADO'),(15,1,1,720,'RESERVADO'),(16,1,1,159,'RESERVADO'),(17,1,1,291,'RESERVADO'),(18,1,1,453,'RESERVADO');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voos`
--

DROP TABLE IF EXISTS `voos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voos` (
  `id_voo` int NOT NULL AUTO_INCREMENT,
  `numero_voo` int NOT NULL,
  `companhia_aerea` varchar(255) NOT NULL,
  `aeroporto_partida` varchar(60) DEFAULT NULL,
  `aeroporto_chegada` varchar(60) DEFAULT NULL,
  `data_partida` date NOT NULL,
  `hora_partida` time NOT NULL,
  `duracao_voo` time NOT NULL,
  `numero_assentos` int NOT NULL,
  `preco_voo` decimal(10,2) NOT NULL,
  `origem` varchar(45) NOT NULL,
  `destino` varchar(45) NOT NULL,
  `desconto` int DEFAULT NULL,
  PRIMARY KEY (`id_voo`),
  UNIQUE KEY `numero_voo_UNIQUE` (`numero_voo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voos`
--

LOCK TABLES `voos` WRITE;
/*!40000 ALTER TABLE `voos` DISABLE KEYS */;
INSERT INTO `voos` VALUES (1,1146,'Azul','Santos Dummont','Viracopos','2023-11-25','08:00:02','00:40:00',150,650.00,'Rio de Janeiro','Sao Paulo',30),(8,8466,'Gol','A. Sao Luiz','AI Fortaleza','2023-10-27','17:00:00','02:00:00',130,560.00,'Sao Luiz','Fortaleza',10),(9,9242,'Alianca','Galeao','Ai Brasilia','2023-11-22','17:00:00','02:00:00',120,150.00,'Rio de janeiro','Brasilia',0);
/*!40000 ALTER TABLE `voos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 14:04:34
