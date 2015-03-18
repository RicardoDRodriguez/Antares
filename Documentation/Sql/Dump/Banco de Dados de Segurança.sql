-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: security
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `componente_acesso`
--

DROP TABLE IF EXISTS `componente_acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componente_acesso` (
  `uid` varchar(64) NOT NULL DEFAULT '' COMMENT 'chave unica',
  `grupoComponenteUid` varchar(64) NOT NULL COMMENT 'chave da tabela de grupos de componentes\n',
  `codigo` varchar(50) NOT NULL COMMENT 'codigo do componente',
  `nome` varchar(100) NOT NULL COMMENT 'nome do componente a ser descrito na tela',
  `descricao` varchar(250) NOT NULL COMMENT 'Informações do componentente para tooltip da tela',
  `ordemComponente` int(11) NOT NULL DEFAULT '0' COMMENT 'ordem do componente na tela',
  `url` varchar(500) NOT NULL COMMENT 'url do componente em twig ou http',
  `iconeComponente` varchar(45) DEFAULT NULL COMMENT 'icone do componente',
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-> componente está ativo ----  0-> componente inativo\n',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-> registro não foi excluido  1-> registro excluido',
  PRIMARY KEY (`uid`),
  KEY `fk_ix_componente_acesso_grupo_componente_idx` (`grupoComponenteUid`),
  CONSTRAINT `fk_ix_componente_acesso_grupo_componente` FOREIGN KEY (`grupoComponenteUid`) REFERENCES `grupo_componente` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componente_acesso`
--

LOCK TABLES `componente_acesso` WRITE;
/*!40000 ALTER TABLE `componente_acesso` DISABLE KEYS */;
INSERT INTO `componente_acesso` VALUES ('0420d2af-c8a6-11e4-b71f-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','LANCAR FALTAS','Lançar Faltas','Lançamento de faltas pelo Professor',4,'lancar_faltas','icon-clock',1,0),('65eea359-c980-11e4-b7d7-00ff1b95bbf8','c899d0b3-c32e-11e4-bfb0-00ff1b95bbf8','FALTAS','Faltas','Lançamento de Faltas pelo Professor',3,'lancar_faltas','',1,0),('6906472c-c331-11e4-bfb0-00ff1b95bbf8','c899d0b3-c32e-11e4-bfb0-00ff1b95bbf8','PERFIL','Meu Perfil','Dados de Perfil',0,'url a ser definida','',1,0),('690cf0d5-c331-11e4-bfb0-00ff1b95bbf8','c899d0b3-c32e-11e4-bfb0-00ff1b95bbf8','BOLETIM','Boletim Escolar','Apresenta o boletim escolar do aluno',1,'boletim','',1,0),('6915d327-c331-11e4-bfb0-00ff1b95bbf8','c899d0b3-c32e-11e4-bfb0-00ff1b95bbf8','NOTAS','Notas','Lancamento de notas do professor',2,'lancar_notas','',1,0),('692ba149-c331-11e4-bfb0-00ff1b95bbf8','c899d0b3-c32e-11e4-bfb0-00ff1b95bbf8','SIMULAR ALUNO','Acessar como Aluno','Simulador de alunos - Lista',4,'url a ser definida','',1,0),('693c08e7-c331-11e4-bfb0-00ff1b95bbf8','c899d0b3-c32e-11e4-bfb0-00ff1b95bbf8','SIMULAR PROFESSOR','Acessar como Professor','Simulador de professor- Lista',5,'url a ser definida','',1,0),('7b4512d7-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','BOLETIM ESCOLAR','Boletim Escolar','Apresenta o Boletim ao Aluno',0,'boletim','icon-list-view',1,0),('7b5065bb-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','SIMULAR NOTA','Simular Nota','Simulador de Notas para as Certificacoes',1,'simula_notas_aluno','icon-equalizer',1,0),('7b5605a3-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','SIMULAR APOIO','Simular Provas Apoio','Simulador de Notas para as Provas de Apoio',2,'url a ser definida','icon-dashboard',1,0),('7b789df1-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','CALENDARIO ESCOLAR','Calendário Escolar','Apresenta o Link de Calendário Escolar',5,'url a ser definida','icon-calendar',1,0),('7b7e56f7-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','DADOS PESSOAIS','Meus Dados Pessoais','Apresenta os dados pessoais do Aluno',6,'url a ser definida','icon-vcard',1,0),('7b86e5f6-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','ALTERAR SENHA','Alterar Senha','Acesso direto para alterar senha',7,'password','icon-lock',1,0),('7b8f7005-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','ALTERAR EMAIL','Alterar Email','Acesso direto para alterar Email',8,'email','icon-envelope-opened',1,0),('7b98b54b-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','REQUERIMENTO','Requerimento On-Line','Pedido de requerimento de Alunos e Funcionários',9,'url a ser definida','icon-comments-2',0,0),('7ba1a072-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','HISTORICO','Histórico de Acessos','Verifica Historico de Acessos pelo Token',10,'url a ser definida','icon-folder',1,0),('7ba8edef-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','GRUPO USUARIOS','Grupo de Usuários','Manutenção do Grupo de Usuários',11,'url a ser definida','icon-flag',1,0),('7bb4b8b4-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','USUARIOS','Usuários do Sistema','Manutenção de Usuários',12,'url a ser definida','icon-pushpin',1,0),('7bbc25ef-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','GRUPO COMPONENTES','Grupo de Componentes','Manutenção de Grupo de Componentes',13,'url a ser definida','icon-cube',1,0),('7bc4b73b-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','COMPONENTES','Componentes','Manutenção de Componentes',14,'url a ser definida','icon-chart',1,0),('7bcdf71e-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','PERMISSAO GRUPO','Permissão de Grupos','Manutenção de Permissão de Grupos',15,'url a ser definida','icon-database',1,0),('7bd6e32a-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','PERMISSAO USUARIO','Permissão de Usuários','Manutenção de Permissão de Usuários',16,'url a ser definida','icon-key',1,0),('7bdfc4dc-c334-11e4-bfb0-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','DADOS SISTEMA','Dados do Sistema','Atualizações Dados Especificos, etc',17,'url a ser definida','icon-puzzle',1,0),('dee62f8c-c8a5-11e4-b71f-00ff1b95bbf8','c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','LANCAR NOTAS','Lançar Notas','Lançamento de notas pelo Professor',3,'lancar_notas','icon-screen',1,0);
/*!40000 ALTER TABLE `componente_acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credencial`
--

DROP TABLE IF EXISTS `credencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credencial` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `usuarioUid` varchar(64) NOT NULL,
  `tipoProvider` varchar(200) NOT NULL,
  `providerToken` varchar(200) NOT NULL,
  `providerCode` varchar(200) NOT NULL,
  `providerName` varchar(200) NOT NULL,
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `fk_ix_credencial_usuario_idx` (`usuarioUid`),
  CONSTRAINT `fk_ix_credencial_usuario` FOREIGN KEY (`usuarioUid`) REFERENCES `usuario` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credencial`
--

LOCK TABLES `credencial` WRITE;
/*!40000 ALTER TABLE `credencial` DISABLE KEYS */;
/*!40000 ALTER TABLE `credencial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_componente`
--

DROP TABLE IF EXISTS `grupo_componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_componente` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `codigo` varchar(45) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_componente`
--

LOCK TABLES `grupo_componente` WRITE;
/*!40000 ALTER TABLE `grupo_componente` DISABLE KEYS */;
INSERT INTO `grupo_componente` VALUES ('c899d0b3-c32e-11e4-bfb0-00ff1b95bbf8','MEUS ACESSOS','Meus Acessos','Regras de acesso aos sistemas disponíveis',1,0),('c8a6adfd-c32e-11e4-bfb0-00ff1b95bbf8','ACESSO RAPIDO','Acesso Rápido','Regras de acesso ao sistema através de acesso rápido',1,0);
/*!40000 ALTER TABLE `grupo_componente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_usuario`
--

DROP TABLE IF EXISTS `grupo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_usuario` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `grupoPaiUid` varchar(64) DEFAULT NULL,
  `codigo` varchar(45) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `fk_ix_grupo_usuarios_grupo_usuario_idx` (`grupoPaiUid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_usuario`
--

LOCK TABLES `grupo_usuario` WRITE;
/*!40000 ALTER TABLE `grupo_usuario` DISABLE KEYS */;
INSERT INTO `grupo_usuario` VALUES ('3c388b70-c32d-11e4-bfb0-00ff1b95bbf8',NULL,'HOMOLOG','Homologador','Possuem acesso aos modulos para Homologacao',1,0),('3c3dfcac-c32d-11e4-bfb0-00ff1b95bbf8',NULL,'TESTE','Tester','Possuem acesso aos modulos de Testes',1,0),('3c4d53eb-c32d-11e4-bfb0-00ff1b95bbf8',NULL,'SECRETARIA','Secretaria','Possuem acesso aos modulos de Secretaria',1,0),('3c6801ce-c32d-11e4-bfb0-00ff1b95bbf8',NULL,'DIRETORIA','Diretoria','Possuem acesso aos modulos de Diretoria',1,0),('3c700746-c32d-11e4-bfb0-00ff1b95bbf8',NULL,'PRE-REITORIA','Pró-Reitoria','Possuem acesso aos modulos de Pré-Reitoria',1,0),('3c7cb38a-c32d-11e4-bfb0-00ff1b95bbf8',NULL,'REITORIA','Pró-Reitoria','Possuem acesso aos modulos de Reitoria',1,0),('3c816fa3-c32d-11e4-bfb0-00ff1b95bbf8',NULL,'CONVIDADO','Convidado','Possuem acesso aos modulos considerados abertos a usuarios convidados',1,0),('b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8',NULL,'ADMIN','Admin','Possuem pleno acesso ao sistema',1,0),('b5d8e303-c32c-11e4-bfb0-00ff1b95bbf8',NULL,'PROFESSOR','Professor','Possuem acesso aos modulos de professores',1,0),('b5ddad7e-c32c-11e4-bfb0-00ff1b95bbf8',NULL,'ALUNO','Aluno','Possuem acesso aos modulos de alunos',1,0);
/*!40000 ALTER TABLE `grupo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao_grupo`
--

DROP TABLE IF EXISTS `permissao_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao_grupo` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `grupoUsuarioUid` varchar(64) NOT NULL,
  `componenteAcessoUid` varchar(64) NOT NULL,
  `controleCompleto` tinyint(4) NOT NULL,
  `criar` tinyint(4) NOT NULL,
  `ler` tinyint(4) NOT NULL,
  `alterar` tinyint(4) NOT NULL,
  `excluir` tinyint(4) NOT NULL,
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `fk_ix_permissao_grupo_grupo_usuario_idx` (`grupoUsuarioUid`),
  KEY `fk_ix_permissao_grupo_componente_acesso_idx` (`componenteAcessoUid`),
  CONSTRAINT `fk_ix_permissao_grupo_componente_acesso` FOREIGN KEY (`componenteAcessoUid`) REFERENCES `componente_acesso` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ix_permissao_grupo_grupo_usuario` FOREIGN KEY (`grupoUsuarioUid`) REFERENCES `grupo_usuario` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao_grupo`
--

LOCK TABLES `permissao_grupo` WRITE;
/*!40000 ALTER TABLE `permissao_grupo` DISABLE KEYS */;
INSERT INTO `permissao_grupo` VALUES ('62eded16-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','6906472c-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('62f46956-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','690cf0d5-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('62f46a7b-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','6915d327-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('62f46af7-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','692ba149-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('62f46b6d-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','693c08e7-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('62f46bdf-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b4512d7-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63154a2e-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b5065bb-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63154f88-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b5605a3-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('6315530f-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b789df1-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63155608-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b7e56f7-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('631558e2-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b86e5f6-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63155bc3-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b8f7005-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63155e8e-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7b98b54b-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('6315614e-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7ba1a072-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('6315644c-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7ba8edef-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('6315677e-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7bb4b8b4-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63156a2f-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7bbc25ef-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63156bf3-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7bc4b73b-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63156d97-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7bcdf71e-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('63156f4d-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7bd6e32a-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('6315710c-c335-11e4-bfb0-00ff1b95bbf8','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8','7bdfc4dc-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0);
/*!40000 ALTER TABLE `permissao_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao_usuario`
--

DROP TABLE IF EXISTS `permissao_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao_usuario` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `usuarioUid` varchar(64) NOT NULL,
  `componenteAcessoUid` varchar(64) NOT NULL,
  `controleCompleto` tinyint(4) NOT NULL,
  `criar` tinyint(4) NOT NULL,
  `ler` tinyint(4) NOT NULL,
  `alterar` tinyint(4) NOT NULL,
  `excluir` tinyint(4) NOT NULL,
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `fk_permissao_usuario_usuario_idx` (`usuarioUid`),
  KEY `fk_ix_permissao_usuario_componente-acesso_idx` (`componenteAcessoUid`),
  CONSTRAINT `fk_ix_permissao_usuario_componente-acesso` FOREIGN KEY (`componenteAcessoUid`) REFERENCES `componente_acesso` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_permissao_usuario_usuario` FOREIGN KEY (`usuarioUid`) REFERENCES `usuario` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao_usuario`
--

LOCK TABLES `permissao_usuario` WRITE;
/*!40000 ALTER TABLE `permissao_usuario` DISABLE KEYS */;
INSERT INTO `permissao_usuario` VALUES ('08b14e48-c8a7-11e4-b71f-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','dee62f8c-c8a5-11e4-b71f-00ff1b95bbf8',1,1,1,1,1,1,0),('146960c8-c8a7-11e4-b71f-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','0420d2af-c8a6-11e4-b71f-00ff1b95bbf8',1,1,1,1,1,1,0),('ae17c0ac-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','6906472c-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae17c3f3-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','690cf0d5-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae17c4a8-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','6915d327-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae17c515-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','692ba149-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae17c57e-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','693c08e7-c331-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae17c609-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b4512d7-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae17c673-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b5065bb-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e2bec-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b5605a3-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e2d50-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b789df1-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e2dd2-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b7e56f7-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e2e3e-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b86e5f6-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e2eab-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b8f7005-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e2f18-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7b98b54b-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e2f7b-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7ba1a072-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e302d-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7ba8edef-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e30a3-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7bb4b8b4-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e310d-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7bbc25ef-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e3170-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7bc4b73b-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e31d7-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7bcdf71e-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e323b-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7bd6e32a-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('ae2e32a1-c335-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','7bdfc4dc-c334-11e4-bfb0-00ff1b95bbf8',1,1,1,1,1,1,0),('f0240b92-c980-11e4-b7d7-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','65eea359-c980-11e4-b7d7-00ff1b95bbf8',1,1,1,1,1,1,0);
/*!40000 ALTER TABLE `permissao_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `usuarioUid` varchar(64) NOT NULL,
  `token` varchar(256) NOT NULL,
  `dataExpiracao` datetime NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `ip4` varchar(50) NOT NULL,
  `ip6` varchar(50) NOT NULL,
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `fk_ix_token_usuario_idx` (`usuarioUid`),
  CONSTRAINT `fk_ix_token_usuario` FOREIGN KEY (`usuarioUid`) REFERENCES `usuario` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES ('00ce0d63-c981-11e4-b7d7-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','889bba94085b181ef959703871dd7788','2015-03-13 15:01:01','2015-03-13 10:01:01','127.0.0.1','A Implementar',1,0),('02df96ef-c655-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','c845faa550d66a2965a2aebac4c27f9f','2015-03-09 14:08:43','2015-03-09 09:08:43','127.0.0.1','A Implementar',1,0),('0f7497e8-cd64-11e4-b345-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','52207e7141f077c9deaf53349c5a10fd','2015-03-18 13:43:48','2015-03-18 08:43:48','127.0.0.1','A Implementar',1,0),('16c53949-c656-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','b07259d47530b2856ebbedf65f572f12','2015-03-09 14:16:26','2015-03-09 09:16:26','127.0.0.1','A Implementar',1,0),('26de94bd-c655-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','f71fff418bf3c6918846d72e2e5f02a9','2015-03-09 14:09:44','2015-03-09 09:09:44','127.0.0.1','A Implementar',1,0),('2c5dd2e3-c661-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','bda2d2c1cbac8173d0f05672cefd55d0','2015-03-09 15:35:46','2015-03-09 10:35:46','127.0.0.1','A Implementar',1,0),('2d3be670-c66d-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','d71ef6f9ed4e603ae031f0a860015df1','2015-03-09 17:01:42','2015-03-09 12:01:42','127.0.0.1','A Implementar',1,0),('3583f7bc-c65e-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','20e95da0796d9e587b9bbb1a409f3e31','2015-03-09 15:14:33','2015-03-09 10:14:33','127.0.0.1','A Implementar',1,0),('394e581f-c8a3-11e4-b71f-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','44f7605cea998c61d1a18a9dd23d3de8','2015-03-12 12:33:28','2015-03-12 07:33:28','127.0.0.1','A Implementar',1,0),('41f0d64f-c65f-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','42ce2354bfe4160443d84d6009d74de0','2015-03-09 15:22:04','2015-03-09 10:22:04','127.0.0.1','A Implementar',1,0),('4368bcaf-c710-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','0be926f544eca989b0e8921b2a23aeaf','2015-03-10 12:29:00','2015-03-10 07:29:00','127.0.0.1','A Implementar',1,0),('445befd8-cbce-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','e90c1a2bc8c1051545e77a8559637e14','2015-03-16 13:19:06','2015-03-16 08:19:06','127.0.0.1','A Implementar',1,0),('4de7138b-c8a4-11e4-b71f-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','c4e5a101f88ba3b239c58cbd0d679518','2015-03-12 12:41:12','2015-03-12 07:41:12','127.0.0.1','A Implementar',1,0),('4ea973d8-c984-11e4-b7d7-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','44d4d2d6c205d0dbe7f2d14523a5c727','2015-03-13 15:24:40','2015-03-13 10:24:40','127.0.0.1','A Implementar',1,0),('517ebf15-cd53-11e4-b345-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','1c83e48491ab9782a3f304ee2d30fe34','2015-03-18 11:43:58','2015-03-18 06:43:58','127.0.0.1','A Implementar',1,0),('53a038b4-c655-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','cfe5ab5ab8141686e1cff282d1763943','2015-03-09 14:10:59','2015-03-09 09:10:59','127.0.0.1','A Implementar',1,0),('53a2572c-c663-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','2d44363b9f816d9af05bb434a129edd8','2015-03-09 15:51:11','2015-03-09 10:51:11','127.0.0.1','A Implementar',1,0),('53a5e9b3-c65d-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','a42274268b0a974df7aff2316ccb336e','2015-03-09 15:08:14','2015-03-09 10:08:14','127.0.0.1','A Implementar',1,0),('5778bfc1-c660-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','645c650e780eb1276b74a135d0c4e0b4','2015-03-09 15:29:49','2015-03-09 10:29:49','127.0.0.1','A Implementar',1,0),('59d02412-c7e0-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','15c105de5a858789e9f2c61ad0834f25','2015-03-11 13:18:32','2015-03-11 08:18:32','127.0.0.1','A Implementar',1,0),('63fafea9-c655-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','1e16c79b696bffc7af8f041b95aa9e18','2015-03-09 14:11:26','2015-03-09 09:11:26','127.0.0.1','A Implementar',1,0),('65958130-c65f-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','bff67e0810f2d13fd5b49b5ca2995aac','2015-03-09 15:23:03','2015-03-09 10:23:03','127.0.0.1','A Implementar',1,0),('68d46b03-c7dc-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','25784c8d85622b7ade9ae8cc067ade8d','2015-03-11 12:50:19','2015-03-11 07:50:19','127.0.0.1','A Implementar',1,0),('690d9f65-c662-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','f07b227ca4d7a03e5d2064b924321829','2015-03-09 15:44:38','2015-03-09 10:44:38','127.0.0.1','A Implementar',1,0),('6a155c51-c730-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','4dbcc100ba6dfd452336b8dc06503737','2015-03-10 16:19:08','2015-03-10 11:19:08','127.0.0.1','A Implementar',1,0),('6d724b53-c7e6-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','4252d58feb301ab959ae2ae43ca9e3a2','2015-03-11 14:02:01','2015-03-11 09:02:01','127.0.0.1','A Implementar',1,0),('6dc8efba-cbcd-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','cec92a37cc076f8c7dd744de410ec3fa','2015-03-16 13:13:06','2015-03-16 08:13:06','127.0.0.1','A Implementar',1,0),('6ea650a0-c989-11e4-b7d7-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','a5b621e844b2c2e3a008a45c9c3b5bae','2015-03-13 16:01:21','2015-03-13 11:01:21','127.0.0.1','A Implementar',1,0),('72d49ecc-c65d-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','a0ee1553c3ad32320c76ea0814cd8c5d','2015-03-09 15:09:07','2015-03-09 10:09:07','127.0.0.1','A Implementar',1,0),('760ef178-c660-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','f3c69fe1d82c8270e2d7c1708015353f','2015-03-09 15:30:41','2015-03-09 10:30:41','127.0.0.1','A Implementar',1,0),('7935801e-cbbe-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','134a9936747919caeb979a8ba0307bac','2015-03-16 11:26:03','2015-03-16 06:26:03','127.0.0.1','A Implementar',1,0),('7a225855-c7ec-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','3f5c2719a9b0f1af29dbd69f9ca0d3ce','2015-03-11 14:45:19','2015-03-11 09:45:19','127.0.0.1','A Implementar',1,0),('7e6255fb-c721-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','05a34a84a640aabba94233dbe2791467','2015-03-10 14:32:20','2015-03-10 09:32:20','127.0.0.1','A Implementar',1,0),('7f6ba097-c7d4-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','8f7053e7181381f822b5f94f40fbde38','2015-03-11 11:53:41','2015-03-11 06:53:41','127.0.0.1','A Implementar',1,0),('84b42b86-c7da-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','ca14c9b276789abd874c967edc6a68cf','2015-03-11 12:36:47','2015-03-11 07:36:47','127.0.0.1','A Implementar',1,0),('86df10bf-c65f-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','783f4dfef60e8b9742ed73cdbf48454c','2015-03-09 15:23:59','2015-03-09 10:23:59','127.0.0.1','A Implementar',1,0),('87d086c6-c655-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','c41f68ffa9866561fe19e439f39923b7','2015-03-09 14:12:26','2015-03-09 09:12:26','127.0.0.1','A Implementar',1,0),('88e425da-cc95-11e4-b345-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','15c6dc7e1db06c1d5a4fe495ee7e9f54','2015-03-17 13:05:33','2015-03-17 08:05:33','127.0.0.1','A Implementar',1,0),('8ca3de36-ccb1-11e4-b345-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','f48ed620db4aa805afae60bec51e3f4e','2015-03-17 16:26:05','2015-03-17 11:26:05','127.0.0.1','A Implementar',1,0),('91b87038-c7f4-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','6d973455388bfe59e2754655d92802b3','2015-03-11 15:43:15','2015-03-11 10:43:15','127.0.0.1','A Implementar',1,0),('9618e6c7-c7ef-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','187c405344d45df90a8a0c2d2d52d99f','2015-03-11 15:07:35','2015-03-11 10:07:35','127.0.0.1','A Implementar',1,0),('9bec32ee-cc8a-11e4-b345-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','de4a338685888440c1ca54affb22eb8f','2015-03-17 11:47:21','2015-03-17 06:47:21','127.0.0.1','A Implementar',1,0),('9ea898a5-c65f-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','0f1c227a42939b6f6d208d57e3b33f29','2015-03-09 15:24:39','2015-03-09 10:24:39','127.0.0.1','A Implementar',1,0),('9fd7e4e3-c804-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','e1e68d0e61f2c3f39720388ddd5183cf','2015-03-11 17:38:10','2015-03-11 12:38:10','127.0.0.1','A Implementar',1,0),('a1bab83b-c721-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','026aac7fc46c0dad123b32fdb50501f6','2015-03-10 14:33:19','2015-03-10 09:33:19','127.0.0.1','A Implementar',1,0),('a39213fd-cbf3-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','d12c1137e7ce78bc73c4ffed0db64146','2015-03-16 17:46:36','2015-03-16 12:46:36','127.0.0.1','A Implementar',1,0),('a4c7a833-cbf1-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','3cfed96f23e1727170535f8656295009','2015-03-16 17:32:19','2015-03-16 12:32:19','127.0.0.1','A Implementar',1,0),('a5a2de54-c660-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','133f7b0d7c97608eddabe8667c41844e','2015-03-09 15:32:00','2015-03-09 10:32:00','127.0.0.1','A Implementar',1,0),('a73deeea-c7f4-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','5187bd8c24a2fe423f9b71e3f9d2b9ed','2015-03-11 15:43:51','2015-03-11 10:43:51','127.0.0.1','A Implementar',1,0),('a7f8072d-c732-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','5be487dddead6a96c9e1505360d719b6','2015-03-10 16:35:11','2015-03-10 11:35:11','127.0.0.1','A Implementar',1,0),('a8100d6d-c723-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','a199c5a99dfe0d5482f2b55c0210bcc2','2015-03-10 14:47:49','2015-03-10 09:47:49','127.0.0.1','A Implementar',1,0),('aaae8274-cbcd-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','c4a034c3f929d219956e07e561f766dd','2015-03-16 13:14:48','2015-03-16 08:14:48','127.0.0.1','A Implementar',1,0),('b046f8e2-c8a4-11e4-b71f-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','d5784135fe49c1f8f9556661380c2df2','2015-03-12 12:43:57','2015-03-12 07:43:57','127.0.0.1','A Implementar',1,0),('b1fe86ed-c655-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','8c272c647595cd664cfe62b24ca0dbf6','2015-03-09 14:13:37','2015-03-09 09:13:37','127.0.0.1','A Implementar',1,0),('b559515e-c707-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','55c9857c6e8f554078e694f36d44e0d4','2015-03-10 11:27:46','2015-03-10 06:27:46','127.0.0.1','A Implementar',1,0),('b82b464b-cbbf-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','eafabd7f7d78cc8e250bad44effd9743','2015-03-16 11:34:58','2015-03-16 06:34:58','127.0.0.1','A Implementar',1,0),('b92283d1-c658-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','935413737d1677ca44488ee5f641e796','2015-03-09 14:35:17','2015-03-09 09:35:17','127.0.0.1','A Implementar',1,0),('be9425bb-c656-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','41898ff928f875862b0469805a0a3241','2015-03-09 14:21:08','2015-03-09 09:21:08','127.0.0.1','A Implementar',1,0),('c1b22fd5-c662-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','b71c4ae91e3adbe26ee5c9eeef42b45a','2015-03-09 15:47:06','2015-03-09 10:47:06','127.0.0.1','A Implementar',1,0),('c2f00b16-c89a-11e4-b71f-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','0779a7ffc6f88e45b7b1255cd42d96b5','2015-03-12 11:32:54','2015-03-12 06:32:54','127.0.0.1','A Implementar',1,0),('c4473864-c65f-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','0238a5f9d49c475eae59f42943cf96d1','2015-03-09 15:25:42','2015-03-09 10:25:42','127.0.0.1','A Implementar',1,0),('cfd8b9bc-c7db-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','739929a4ff485e7e6df105a72b2f8923','2015-03-11 12:46:02','2015-03-11 07:46:02','127.0.0.1','A Implementar',1,0),('d1326516-c65f-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','95e31a9bfa4f764252208fd298285b47','2015-03-09 15:26:04','2015-03-09 10:26:04','127.0.0.1','A Implementar',1,0),('d29e7203-c656-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','8a9192afed2db6998a37841b79f226f5','2015-03-09 14:21:41','2015-03-09 09:21:41','127.0.0.1','A Implementar',1,0),('d65e2b89-cd63-11e4-b345-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','977c53e7b2d1da371b4e8240d4a6645b','2015-03-18 13:42:12','2015-03-18 08:42:12','127.0.0.1','A Implementar',1,0),('d7c10260-c7f7-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','a5846300053254b9ac017fad70054de9','2015-03-11 16:06:41','2015-03-11 11:06:41','127.0.0.1','A Implementar',1,0),('d95cb2bd-c660-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','4e4fa9939bc68fa4d8b4b28289de0614','2015-03-09 15:33:27','2015-03-09 10:33:27','127.0.0.1','A Implementar',1,0),('dde65a2f-c7ee-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','151b7b4623388c1ec1fcdd7cf850ad6d','2015-03-11 15:02:26','2015-03-11 10:02:26','127.0.0.1','A Implementar',1,0),('dfd7470c-c7e7-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','ee76da62a1255d2f53ca146ebbd9314b','2015-03-11 14:12:23','2015-03-11 09:12:23','127.0.0.1','A Implementar',1,0),('e0987153-c7f5-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','49f674b72b2b4973cde8eeb9a417ea48','2015-03-11 15:52:37','2015-03-11 10:52:37','127.0.0.1','A Implementar',1,0),('e38d2bc1-c662-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','f88b8fd1d35b7d4089b54dadc102a6eb','2015-03-09 15:48:03','2015-03-09 10:48:03','127.0.0.1','A Implementar',1,0),('e4882de7-c661-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','c0b2c0b949d53308b2fa3b144321f318','2015-03-09 15:40:55','2015-03-09 10:40:55','127.0.0.1','A Implementar',1,0),('e63e6e6a-cbf3-11e4-8b29-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','95b6cd0a448f6e9858aa80c8065b7bb0','2015-03-16 17:48:28','2015-03-16 12:48:28','127.0.0.1','A Implementar',1,0),('e81489cd-c730-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','71206cc1f730d731f77afa2a7dde5f58','2015-03-10 16:22:40','2015-03-10 11:22:40','127.0.0.1','A Implementar',1,0),('e9898c7c-cd63-11e4-b345-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','152ae2d30d3724f225ed0e9f589c87b1','2015-03-18 13:42:45','2015-03-18 08:42:45','127.0.0.1','A Implementar',1,0),('ea5dff21-c723-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','413e713ec657f7a3317f3aace727ce3c','2015-03-10 14:49:40','2015-03-10 09:49:40','127.0.0.1','A Implementar',1,0),('eb7eeac7-c656-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','9d60875795625f4ece6d068b8efa8ac6','2015-03-09 14:22:23','2015-03-09 09:22:23','127.0.0.1','A Implementar',1,0),('f179eec8-c80c-11e4-b20c-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','daf563366e08654d5b22d3fe181a3e60','2015-03-11 18:37:43','2015-03-11 13:37:43','127.0.0.1','A Implementar',1,0),('fc4fcc1a-c661-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','4972958b4f489788815988f25a0a9a4b','2015-03-09 15:41:35','2015-03-09 10:41:35','127.0.0.1','A Implementar',1,0);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `uid` varchar(64) NOT NULL DEFAULT '' COMMENT 'chave universal',
  `matricula` varchar(64) NOT NULL COMMENT 'matricula do aluno ou funcionario',
  `nome` varchar(200) NOT NULL COMMENT 'nome do usuario',
  `email` varchar(500) NOT NULL COMMENT 'email do usuario',
  `senha` varchar(64) NOT NULL COMMENT 'senha do usuario',
  `senhaAlternativa` varchar(64) NOT NULL COMMENT 'senha alternativa do usuario - normalmente usada em openid',
  `dicaSenha` varchar(100) NOT NULL COMMENT 'dica senha',
  `dataUltimoAcesso` datetime NOT NULL COMMENT 'data do ultimo acesso',
  `qtdeTentativas` tinyint(4) NOT NULL COMMENT 'qtde de tentativas de acesso',
  `providerId` varchar(100) NOT NULL COMMENT 'provider - se o usuario utilizara AD, OpenId ou programa interno.',
  `dataExpiracao` datetime DEFAULT NULL COMMENT 'data de expiracao do acesso do usuario',
  `superUser` tinyint(4) DEFAULT '0' COMMENT '0->usuario comum 1->superuser',
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 -> inativo, 1-> ativo',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-> registro não excluido 1-> registro excluido',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de usuários do Sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('1aec2243-be85-11e4-9be1-9cb654a649c5','2023357','Administrador do Sistema','admin@adim','0362ff0ef6d838f15c0089a9b38ac4b2','0362ff0ef6d838f15c0089a9b38ac4b2','Senha do administrador','2015-03-05 11:41:36',0,'0','2015-12-31 00:00:00',1,1,0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_grupo_usuario`
--

DROP TABLE IF EXISTS `usuario_grupo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_grupo_usuario` (
  `uid` varchar(64) NOT NULL DEFAULT '' COMMENT 'identificador unico',
  `usuarioUid` varchar(64) NOT NULL COMMENT 'identificador unico do usuario',
  `grupoUsuarioUid` varchar(64) NOT NULL COMMENT 'identificador unico do grupo de usuario',
  `flgAtivo` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0-> inativo 1-> ativo',
  `flgExcluido` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-> não excluido 1-> excluido',
  PRIMARY KEY (`uid`),
  KEY `fk_ix_usuarios_grupos_usuarios_grupo_usuarios_idx` (`grupoUsuarioUid`),
  KEY `fk_ix_usuario_usuario_grupo_usuarios_idx` (`usuarioUid`),
  CONSTRAINT `fk_ix_usuarios_grupos_usuarios_grupo_usuarios` FOREIGN KEY (`grupoUsuarioUid`) REFERENCES `grupo_usuario` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ix_usuario_usuario_grupo_usuarios` FOREIGN KEY (`usuarioUid`) REFERENCES `usuario` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Relacao de usuario com grupos de usuarios. O usuario poderá pertencer a mais de um grupo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_grupo_usuario`
--

LOCK TABLES `usuario_grupo_usuario` WRITE;
/*!40000 ALTER TABLE `usuario_grupo_usuario` DISABLE KEYS */;
INSERT INTO `usuario_grupo_usuario` VALUES ('0a2fa6df-c32e-11e4-bfb0-00ff1b95bbf8','1aec2243-be85-11e4-9be1-9cb654a649c5','b5cb977e-c32c-11e4-bfb0-00ff1b95bbf8',1,0);
/*!40000 ALTER TABLE `usuario_grupo_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-18  9:05:18
