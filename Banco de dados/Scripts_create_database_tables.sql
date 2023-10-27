#Criando o banco de dados

CREATE DATABASE recode_ag_viagem;

#Criando as tabelas

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
);

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
);

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
);