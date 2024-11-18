CREATE DATABASE rede_aintisocial;

USE antisocial;

CREATE TABLE usuario(
	nick varchar (30) primary key not null,
    email varchar (30) not null unique,
    data_nascimento date not null,
    senha varchar(100) not null,
    foto blob
)
