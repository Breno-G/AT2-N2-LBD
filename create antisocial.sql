CREATE DATABASE IF NOT EXISTS rede_antissocial
DEFAULT CHARACTER SET = 'utf8'
DEFAULT COLLATE = 'utf8_general_ci';

USE rede_antissocial;

-- Sessão 1: TABELAS PRINCIPAIS
CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    foto_perfil VARCHAR(255),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE perfis (
    id_perfil INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    descricao VARCHAR(50),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS grupos (
    id_grupo INT AUTO_INCREMENT PRIMARY KEY,
    nome_grupo VARCHAR(100) NOT NULL UNIQUE,
    descricao VARCHAR(255),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_criador INT NOT NULL,
    FOREIGN KEY (id_criador) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS sessoes (
    id_sessao INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    token VARCHAR(255) NOT NULL UNIQUE,
    hora_entrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    hora_saida TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS conexoes (
    id_seguidor INT NOT NULL,
    id_seguido INT NOT NULL,
    data_conexao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_seguidor, id_seguido),
    FOREIGN KEY (id_seguidor) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_seguido) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE conversas (
    id_conversa INT AUTO_INCREMENT PRIMARY KEY,
    id_remetente INT NOT NULL, 
    id_destinatario INT NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remetente) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_destinatario) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE mensagens (
    id_mensagem INT AUTO_INCREMENT PRIMARY KEY,
    id_conversa INT NOT NULL, 
    id_remetente INT NOT NULL,
    conteudo VARCHAR(1000) NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status_mensagem ENUM('enviada', 'recebida', 'lida') DEFAULT 'enviada',
    FOREIGN KEY (id_conversa) REFERENCES conversas(id_conversa),
    FOREIGN KEY (id_remetente) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS postagens (
    id_postagem INT AUTO_INCREMENT PRIMARY KEY,
    id_autor INT NOT NULL,
    tipo_destino ENUM('perfil', 'grupo') NOT NULL,
    id_destino INT NOT NULL, 
    conteudo TEXT NOT NULL, 
    tipo_midia ENUM('texto', 'imagem', 'video') DEFAULT 'texto',
    caminho_midia VARCHAR(255),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_autor) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS comentarios (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_postagem INT DEFAULT NULL,
    id_comentario_pai INT DEFAULT NULL,
    id_autor INT NOT NULL,
    conteudo TEXT NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_postagem) REFERENCES postagens(id_postagem),
    FOREIGN KEY (id_comentario_pai) REFERENCES comentarios(id_comentario),
    FOREIGN KEY (id_autor) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS avaliacoes (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_postagem INT DEFAULT NULL,
    id_comentario INT DEFAULT NULL,
    tipo ENUM('gostei', 'não gostei') NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_postagem) REFERENCES postagens(id_postagem),
    FOREIGN KEY (id_comentario) REFERENCES comentarios(id_comentario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS notificacoes (
    id_notificacao INT AUTO_INCREMENT PRIMARY KEY,
    id_notificado INT NOT NULL,
    tipo ENUM('mensagem', 'comentario', 'avaliacao', 'grupo') NOT NULL,
    descricao VARCHAR(100),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status_notificacao ENUM('lida', 'nao_lida') DEFAULT 'nao_lida',
    FOREIGN KEY (id_notificado) REFERENCES usuarios(id_usuario)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE IF NOT EXISTS tags (
    id_tag INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

-- Sessão 2: ENTIDADES ASSOCIATIVAS

CREATE TABLE IF NOT EXISTS tag_usuario (
    id_usuario INT NOT NULL,
    id_tag INT NOT NULL,
    data_associacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_usuario, id_tag),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_tag) REFERENCES tags(id_tag)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

CREATE TABLE membros (
    id_membro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_grupo INT NOT NULL,
    funcao ENUM('membro', 'administrador') DEFAULT 'membro',
    data_entrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_grupo) REFERENCES grupos(id_grupo)
)DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';
