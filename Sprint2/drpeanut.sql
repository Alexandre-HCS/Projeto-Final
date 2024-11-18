create database drpeanut;
use drpeanut;

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(20) NOT NULL,
  `cnpj` int(14) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `telefone` int(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
);

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
);

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(50) NOT NULL,
  `codigo_produtos` int(6) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `quantidade_estoque` int(9) DEFAULT NULL,
  `preco_unitario` decimal(10,2) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `fornecedor` (`fornecedor`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`)
);