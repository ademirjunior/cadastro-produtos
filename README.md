# cadastro-produtos
Projeto Final da parte de Java web


Criar banco de dados mysql com as seguintes tabelas

CREATE DATABASE cadastroprodutos;

CREATE TABLE produtos (
    id_produto int PRIMARY KEY AUTO_INCREMENT,
    nome_produto varchar(255),
    qtd_estoque int not null,
    valor_produto BIGINT not null
);

CREATE TABLE usuarios (
    id_usuario int PRIMARY KEY AUTO_INCREMENT,
    login varchar(255),
    senha varchar(255),
    email varchar(255),
);
