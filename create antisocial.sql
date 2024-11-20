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
    Id_comentário primary key auto_Incremente not null int,
    conteudo text,
    data_hora time,
    id_comentario_pai foreign key int,
    id_usuario foreign key int,
    Id_postagem foreign key int
    );

CREATE TABLE Interação (
    ID_interação primary key int,
    tipo_interação,
    data_hora date,
    Id_comentátio foreign key int,
    Id_Postagem foreign key int,
    Id_Usuario foreign key int
    );

CREATE TABLE Notificacao (
    ID_Mensagem primary key int,
    Conteudo text,
    Data_hora time,
    ID_Grupo foreign key int,
    Id_Usuario foreign key int
    );

CREATE TABLE Grupo (
    Id_Grupo primary key int,
    Nome_Grupo VARCHAR (30),
    Descricao text,
    Data_Criacao date
    );

CREATE TABLE Membro_Grupo (
    ID_Grupo foreign key int,
    Id_Usuario foreign key int
    Funcao VARCHAR (15) 
    );
CREATE TABLE Conexao (
    ID_Usuario_Origem foreign key int,
    ID_Usuario_Destino foreign key int
    );
    

















   
   
   
   


