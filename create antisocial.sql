
CREATE DATABASE RedeAntissocial;

USE RedeAntissocial;

CREATE TABLE Usuarios (
    ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Usuario VARCHAR(100) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Data_Nascimento DATE NOT NULL,
    Foto_Perfil BLOB,
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Grupos (
    ID_Grupo INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Grupo VARCHAR(100) NOT NULL UNIQUE,
    Descricao TEXT,
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ID_Criador INT NOT NULL,
    FOREIGN KEY (ID_Criador) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Postagem (
    ID_Postagem INT AUTO_INCREMENT PRIMARY KEY,
    ID_Autor INT NOT NULL,
    Conteudo TEXT NOT NULL,
    Tipo_Midia ENUM('texto', 'imagem', 'video', 'link') DEFAULT 'texto',
    Caminho_Midia VARCHAR(255),
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_Autor) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Sessao (
    ID_Sessao INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    Token VARCHAR(255) NOT NULL,
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Data_Expiracao TIMESTAMP,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Conexoes (
    ID_Conexao INT AUTO_INCREMENT PRIMARY KEY,
    ID_Seguidor INT NOT NULL,
    ID_Seguido INT NOT NULL,
    Data_Conexao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('ativo', 'bloqueado') DEFAULT 'ativo',
    FOREIGN KEY (ID_Seguidor) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Seguido) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Mensagens (
    ID_Mensagem INT AUTO_INCREMENT PRIMARY KEY,
    ID_Remetente INT NOT NULL,
    ID_Destinatario INT NOT NULL,
    Conteudo TEXT NOT NULL,
    Caminho_Midia VARCHAR(255),
    Data_Envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('enviada', 'recebida', 'lida') DEFAULT 'enviada',
    FOREIGN KEY (ID_Remetente) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Destinatario) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Notificacoes (
    ID_Notificacao INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    Tipo ENUM('mensagem', 'comentario', 'avaliacao', 'grupo') NOT NULL,
    Origem VARCHAR(255),
    Descricao TEXT,
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('lida', 'nao_lida') DEFAULT 'nao_lida',
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Comentarios (
    ID_Comentario INT AUTO_INCREMENT PRIMARY KEY,
    ID_Postagem INT DEFAULT NULL,
    ID_Comentario_Pai INT DEFAULT NULL,
    ID_Autor INT NOT NULL,
    Conteudo TEXT NOT NULL,
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_Postagem) REFERENCES Postagem(ID_Postagem),
    FOREIGN KEY (ID_Comentario_Pai) REFERENCES Comentarios(ID_Comentario),
    FOREIGN KEY (ID_Autor) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Avaliacoes (
    ID_Avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    ID_Postagem INT DEFAULT NULL,
    ID_Comentario INT DEFAULT NULL,
    Tipo ENUM('positivo', 'negativo') NOT NULL,
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Postagem) REFERENCES Postagem(ID_Postagem),
    FOREIGN KEY (ID_Comentario) REFERENCES Comentarios(ID_Comentario)
);

CREATE TABLE Tags (
    ID_Tag INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL UNIQUE,
    Data_Criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela Membros (Entidade Associativa entre Usuarios e Grupos)
CREATE TABLE Membros (
    ID_Membro INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    ID_Grupo INT NOT NULL,
    Funcao ENUM('membro', 'administrador') DEFAULT 'membro',
    Data_Entrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Grupo) REFERENCES Grupos(ID_Grupo)
);

-- Tabela Tag_Usuario (Entidade Associativa entre Usuarios e Tags)
CREATE TABLE Tag_Usuario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    ID_Tag INT NOT NULL,
    Data_Associacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Tag) REFERENCES Tags(ID_Tag)
);

-- Tabela Usuario_Mensagem (Entidade Associativa entre Usuarios e Mensagens)
CREATE TABLE Usuario_Mensagem (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT NOT NULL,
    ID_Mensagem INT NOT NULL,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Mensagem) REFERENCES Mensagens(ID_Mensagem)
);
