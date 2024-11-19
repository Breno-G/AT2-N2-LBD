CREATE DATABASE rede_aintisocial;

USE antisocial;

CREATE TABLE usuario(
    ID_Usuario primary key auto_increment not null int,
    Nick varchar (30) unique not null,
    email varchar (30) not null unique,
    data_nascimento date not null,
    senha varchar(100) not null,
    foto blob
);

CREATE TABLE tag (
   Id_tag primary key,
   Nome_tag varchar (30)
);

CREATE TABLE Mensagem_Privada (
   ID_mensagem primary key auto_increment not null int,
   Conteudo text,
   Status ENUM (enviado, recebido, lido),
   Data_Hora date,
   ID_Usuario_Destino foreign key int,
   ID_Usuario_Origem foreign key not int
);

CREATE TABLE Postagem ( 
   Id_Postagem primary key AUTO_INCREMENT NOT NULL INT,
   data_criacao date,
   conteudo text,
   tipo ENUM (texto, imagem, video)
);

CREATE TABLE Comentário (
   
   
   
   


