INSERT INTO usuarios (nome_usuario, email, data_nascimento, foto_perfil)
VALUES 
('João Silva', 'joao.silva@email.com', '1990-05-15', 'https://github.com/Breno-G/AT2-N2-LBD/blob/main/midia/51796415803_00c721e0cc_k.jpg'),
('Maria Oliveira', 'maria.oliveira@email.com', '1985-09-20', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/Maria%20Oliveira.jfif'), 
('Carlos Souza', 'carlos.souza@email.com', '1992-12-10', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/CarlosSouza.jfif'), 
('Fernanda Pereira', 'fernanda.pereira@email.com', '1998-03-30', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/Fernanda.jfif'), 
('Lucas Martins', 'lucas.martins@email.com', '1993-07-22', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/Lucas.jfif'), 
('Ana Costa', 'ana.costa@email.com', '1987-11-05', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/Ana.jfif'), 
('Rafael Lima', 'rafael.lima@email.com', '1995-02-17', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/rafael.jfif'), 
('Juliana Mendes', 'juliana.mendes@email.com', '1990-04-25', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/Juliana.jfif'), 
('Eduardo Santos', 'eduardo.santos@email.com', '1996-01-10', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/Eduardo.jfif'), 
('Patricia Rodrigues', 'patricia.rodrigues@email.com', '1989-06-30', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/Patricia.jfif'),
('Bolso', 'mito@email.com', '1955-03-21', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/51796415803_00c721e0cc_k.jpg'),
('Lule', 'picanha@email.com', '1945-10-27', 'https://github.com/Breno-G/AT2-N2-LBD/blob/branch1/midia/lule.jfif');

INSERT INTO perfis (id_usuario, descricao)
VALUES
(1, 'Apaixonado por tecnologia e inovação'),
(2, 'Aventureira e amante de viagens'),
(3, 'Chef amador e explorador de sabores'),
(4, 'Fitness e esportes ao ar livre'),
(5, 'Cinéfilo e crítico amador'),
(6, 'Leitor voraz e contador de histórias'),
(7, 'Músico em tempo livre e fã de bandas clássicas'),
(8, 'Gamer e estrategista em jogos online'),
(9, 'Designer gráfico e amante da arte'),
(10, 'Fotógrafo e explorador do mundo'),
(11, 'Imbrochável'),
(12, '"Num país que tem tanta gente inteligente, para que precisa de inteligência artificial?"');

INSERT INTO grupos (Nome_Grupo, Descricao, ID_Criador)
VALUES 
('Geeks', 'Grupo para discussões sobre tecnologia', 1),
('Roletando', 'Grupo de viagens e turismo', 2),
('Rango Brabo', 'Grupo de culinária', 3),
('Frows Sports', 'Grupo de esportes e atividades físicas', 4),
('Pipocando', 'Grupo de filmes e séries', 5),
('Historiadores', 'Grupo de leitura e literatura', 6),
('Souds', 'Grupo de música e bandas', 7),
('Nova Moda', 'Grupo de jogos online', 8),
('Loud', 'Grupo de arte e design', 9),
('Artisticos', 'Grupo de fotografia', 10);

INSERT INTO sessoes (id_usuario, token, hora_entrada, hora_saida)
VALUES
(1, 'token_123abc', '2024-01-01 08:00:00', '2024-01-01 12:00:00'),
(2, 'token_456def', '2024-01-01 09:30:00', '2024-01-01 11:45:00'),
(3, 'token_789ghi', '2024-01-01 10:15:00', NULL),
(4, 'token_012jkl', '2024-01-01 07:45:00', '2024-01-01 10:30:00'),
(5, 'token_345mno', '2024-01-01 11:00:00', '2024-01-01 13:15:00'),
(6, 'token_678pqr', '2024-01-01 08:45:00', NULL),
(7, 'token_901stu', '2024-01-01 09:00:00', '2024-01-01 10:45:00'),
(8, 'token_234vwx', '2024-01-01 10:30:00', '2024-01-01 12:00:00'),
(9, 'token_567yz', '2024-01-01 08:15:00', NULL),
(10, 'token_890abc', '2024-01-01 09:50:00', '2024-01-01 11:20:00'),
(11, 'token_111def', '2024-01-01 07:30:00', '2024-01-01 12:00:00'),
(12, 'token_222ghi', '2024-01-01 09:45:00', NULL);


INSERT INTO conexoes (id_seguidor, id_seguido, data_conexao)
VALUES
(1, 2, '2024-01-01 08:30:00'),
(1, 3, '2024-01-01 09:00:00'),
(1, 5, '2024-01-01 09:30:00'),
(1, 7, '2024-01-01 10:00:00'),
(1, 10, '2024-01-01 10:30:00'),
(2, 1, '2024-01-01 11:00:00'),
(2, 4, '2024-01-01 11:30:00'),
(2, 5, '2024-01-01 10:45:00'),
(2, 8, '2024-01-01 12:00:00'),
(3, 1, '2024-01-01 12:00:00'),
(3, 6, '2024-01-01 11:30:00'),
(3, 9, '2024-01-01 13:00:00'),
(3, 11, '2024-01-01 13:30:00'),
(3, 12, '2024-01-01 14:00:00'),
(4, 2, '2024-01-01 14:30:00'),
(4, 7, '2024-01-01 15:00:00'),
(4, 8, '2024-01-01 13:00:00'),
(5, 1, '2024-01-01 15:30:00'),
(5, 3, '2024-01-01 16:00:00'),
(5, 4, '2024-01-01 16:30:00'),
(5, 8, '2024-01-01 17:00:00'),
(5, 9, '2024-01-01 13:30:00'),
(5, 10, '2024-01-01 18:00:00'),
(6, 11, '2024-01-01 14:30:00'),
(6, 12, '2024-01-01 18:30:00'),
(7, 1, '2024-01-01 15:15:00'),
(7, 2, '2024-01-01 19:00:00'),
(7, 3, '2024-01-01 15:30:00'),
(7, 5, '2024-01-01 19:30:00'),
(7, 8, '2024-01-01 20:00:00'),
(7, 11, '2024-01-01 20:30:00'),
(8, 2, '2024-01-01 16:00:00'),
(8, 4, '2024-01-01 15:45:00'),
(8, 6, '2024-01-01 21:00:00'),
(8, 9, '2024-01-01 21:30:00'),
(9, 1, '2024-01-01 22:00:00'),
(9, 3, '2024-01-01 22:30:00'),
(9, 5, '2024-01-01 16:15:00'),
(9, 6, '2024-01-01 16:30:00'),
(9, 7, '2024-01-01 23:00:00'),
(9, 8, '2024-01-01 23:30:00'),
(9, 10, '2024-01-02 00:00:00'),
(10, 2, '2024-01-02 00:30:00'),
(10, 4, '2024-01-02 01:00:00'),
(10, 7, '2024-01-01 16:45:00'),
(10, 8, '2024-01-01 17:00:00'),
(10, 11, '2024-01-02 01:30:00'),
(11, 3, '2024-01-02 02:00:00'),
(11, 9, '2024-01-01 17:15:00'),
(11, 10, '2024-01-01 17:30:00'),
(11, 12, '2024-01-02 02:30:00'),
(12, 1, '2024-01-01 17:45:00'),
(12, 2, '2024-01-01 18:00:00'),
(12, 4, '2024-01-02 03:00:00'),
(12, 5, '2024-01-02 03:30:00'),
(12, 10, '2024-01-02 04:00:00');


INSERT INTO conversas (id_remetente, id_destinatario, data_criacao)
VALUES
(1, 2, '2024-01-01 08:00:00'),
(2, 3, '2024-01-01 08:30:00'),
(1, 3, '2024-01-01 09:00:00'),
(4, 5, '2024-01-01 09:30:00'),
(5, 6, '2024-01-01 10:00:00'),
(6, 7, '2024-01-01 10:30:00'),
(8, 9, '2024-01-01 11:00:00'),
(9, 10, '2024-01-01 11:30:00'),
(11, 12, '2024-01-01 12:00:00'),
(2, 8, '2024-01-01 12:30:00');


INSERT INTO mensagens (id_conversa, id_remetente, conteudo, data_envio, status_mensagem)
VALUES
(1, 1, 'Olá, tudo bem?', '2024-01-01 08:05:00', 'enviada'),
(1, 2, 'Tudo ótimo, e você?', '2024-01-01 08:10:00', 'recebida'),
(2, 2, 'Você viu aquele artigo?', '2024-01-01 08:35:00', 'enviada'),
(2, 3, 'Sim, muito interessante!', '2024-01-01 08:40:00', 'recebida'),
(3, 1, 'Precisamos marcar algo!', '2024-01-01 09:10:00', 'enviada'),
(3, 3, 'Com certeza!', '2024-01-01 09:15:00', 'lida'),
(4, 4, 'Já resolveu o problema?', '2024-01-01 09:35:00', 'enviada'),
(4, 5, 'Quase lá, obrigado pela ajuda!', '2024-01-01 09:40:00', 'lida'),
(5, 5, 'Gostei da sua ideia!', '2024-01-01 10:05:00', 'enviada'),
(5, 6, 'Obrigado, vamos implementar.', '2024-01-01 10:10:00', 'recebida'),
(6, 6, 'E aí, tudo certo?', '2024-01-01 10:35:00', 'enviada'),
(6, 7, 'Sim, tudo em ordem!', '2024-01-01 10:40:00', 'lida'),
(7, 8, 'A reunião foi ótima!', '2024-01-01 11:05:00', 'enviada'),
(7, 9, 'Fiquei sabendo, parabéns!', '2024-01-01 11:10:00', 'lida'),
(8, 11, 'Gostei do seu projeto.', '2024-01-01 12:05:00', 'enviada'),
(8, 12, 'Muito obrigado!', '2024-01-01 12:10:00', 'lida');


INSERT INTO postagens (id_autor, tipo_destino, id_destino, conteudo, tipo_midia, caminho_midia, data_criacao)
VALUES
(1, 'perfil', 1, 'Adorei o artigo que li hoje sobre IA!', 'texto', NULL, '2024-01-01 08:00:00'),
(2, 'perfil', 2, 'Compartilhando minha viagem ao litoral!', 'imagem', 'https://example.com/images/trip.jpg', '2024-01-01 09:30:00'),
(3, 'grupo', 1, 'Receita de bolo de chocolate!', 'texto', NULL, '2024-01-01 10:15:00'),
(4, 'grupo', 2, 'Vídeo do treino de hoje!', 'video', 'https://example.com/videos/workout.mp4', '2024-01-01 11:00:00'),
(5, 'perfil', 5, 'Recomendo assistir ao filme "O Poderoso Chefão"!', 'texto', NULL, '2024-01-01 11:45:00'),
(6, 'grupo', 3, 'Novo livro que comecei a ler!', 'imagem', 'https://example.com/images/book.jpg', '2024-01-01 12:30:00'),
(7, 'perfil', 7, 'Minha banda favorita lançou um novo álbum!', 'texto', NULL, '2024-01-01 13:15:00'),
(8, 'grupo', 4, 'Streaming do jogo ao vivo agora!', 'video', 'https://example.com/videos/gameplay.mp4', '2024-01-01 14:00:00'),
(9, 'perfil', 9, 'Curso de design gráfico que fiz recentemente.', 'texto', NULL, '2024-01-01 14:45:00'),
(10, 'grupo', 5, 'Fotos incríveis de Paris!', 'imagem', 'https://example.com/images/paris.jpg', '2024-01-01 15:30:00');


INSERT INTO comentarios (id_postagem, id_comentario_pai, id_autor, conteudo, data_criacao)
VALUES
-- Comentários diretos em postagens
(1, NULL, 2, 'Adorei o artigo sobre IA, muito interessante!', '2024-01-01 08:30:00'),
(2, NULL, 3, 'As fotos do litoral ficaram incríveis, parabéns!', '2024-01-01 09:45:00'),
(3, NULL, 4, 'Bolo de chocolate é sempre uma ótima escolha!', '2024-01-01 10:30:00'),
(4, NULL, 5, 'Ótimo treino, vou tentar esse exercício amanhã!', '2024-01-01 11:15:00'),
(5, NULL, 6, 'Esse filme é um clássico, realmente imperdível!', '2024-01-01 12:00:00'),
-- Comentários aninhados
(NULL, 1, 3, 'Concordo, a tecnologia está evoluindo rápido!', '2024-01-01 08:40:00'),
(NULL, 2, 4, 'Que lugar é esse? Parece lindo!', '2024-01-01 09:50:00'),
(NULL, 3, 5, 'Já fiz essa receita, mas usei um toque de laranja.', '2024-01-01 10:45:00'),
(NULL, 4, 6, 'Também gostei desse treino, deu resultado!', '2024-01-01 11:20:00'),
(NULL, 5, 7, 'Assisti semana passada e me surpreendi com o enredo!', '2024-01-01 12:15:00');


INSERT INTO avaliacoes (id_usuario, id_postagem, id_comentario, tipo, data_criacao)
VALUES
-- Avaliações de postagens
(1, 1, NULL, 'gostei', '2024-01-01 08:30:00'),
(2, 2, NULL, 'gostei', '2024-01-01 09:45:00'),
(3, 3, NULL, 'gostei', '2024-01-01 10:30:00'),
(4, 4, NULL, 'não gostei', '2024-01-01 11:15:00'),
(5, 5, NULL, 'gostei', '2024-01-01 12:00:00'),

-- Avaliações de comentários
(1, NULL, 1, 'gostei', '2024-01-01 08:40:00'),
(2, NULL, 2, 'gostei', '2024-01-01 09:50:00'),
(3, NULL, 3, 'não gostei', '2024-01-01 10:45:00'),
(4, NULL, 4, 'gostei', '2024-01-01 11:20:00'),
(5, NULL, 5, 'gostei', '2024-01-01 12:15:00');

INSERT INTO notificacoes (id_notificado, tipo, descricao, data_criacao, status_notificacao)
VALUES
(2, 'mensagem', 'João enviou uma mensagem.', '2024-01-01 08:10:00', 'nao_lida'),
(3, 'mensagem', 'Maria enviou uma mensagem.', '2024-01-01 09:40:00', 'lida'),
(4, 'comentario', 'Carlos comentou na sua postagem.', '2024-01-01 10:20:00', 'nao_lida'),
(5, 'comentario', 'Fernanda comentou na sua postagem.', '2024-01-01 11:10:00', 'lida'),
(6, 'avaliacao', 'Lucas avaliou sua postagem.', '2024-01-01 11:50:00', 'nao_lida'),
(7, 'avaliacao', 'Ana avaliou seu comentário.', '2024-01-01 12:35:00', 'nao_lida'),
(8, 'grupo', 'Você foi adicionado ao grupo de culinária.', '2024-01-01 13:15:00', 'lida'),
(9, 'grupo', 'Você foi promovido a administrador do grupo.', '2024-01-01 14:00:00', 'nao_lida'),
(10, 'mensagem', 'Eduardo enviou uma mensagem.', '2024-01-01 14:30:00', 'nao_lida'),
(1, 'comentario', 'Patricia comentou na sua postagem.', '2024-01-01 15:00:00', 'nao_lida');


INSERT INTO tags (id_criador, nome, data_criacao)
VALUES
(1, 'Tecnologia', '2024-01-01 08:00:00'),
(2, 'Viagem', '2024-01-01 08:10:00'),
(3, 'Culinária', '2024-01-01 08:20:00'),
(4, 'Esportes', '2024-01-01 08:30:00'),
(5, 'Cinema', '2024-01-01 08:40:00'),
(6, 'Literatura', '2024-01-01 08:50:00'),
(7, 'Música', '2024-01-01 09:00:00'),
(8, 'Jogos', '2024-01-01 09:10:00'),
(9, 'Arte', '2024-01-01 09:20:00'),
(10, 'Fotografia', '2024-01-01 09:30:00');

INSERT INTO tag_usuario (id_usuario, id_tag, data_associacao)
VALUES
(1, 1, '2024-01-01 08:00:00'),
(1, 3, '2024-01-01 08:10:00'),
(2, 2, '2024-01-01 08:15:00'),
(2, 4, '2024-01-01 08:20:00'),
(3, 5, '2024-01-01 08:30:00'),
(3, 6, '2024-01-01 08:40:00'),
(4, 7, '2024-01-01 08:50:00'),
(5, 8, '2024-01-01 09:00:00'),
(6, 9, '2024-01-01 09:10:00'),
(7, 10, '2024-01-01 09:20:00');

INSERT INTO membros (id_usuario, id_grupo, funcao, data_entrada)
VALUES
(1, 1, 'administrador', '2024-01-01 08:00:00'),
(2, 1, 'membro', '2024-01-01 08:10:00'),
(3, 2, 'administrador', '2024-01-01 08:20:00'),
(4, 2, 'membro', '2024-01-01 08:30:00'),
(5, 3, 'administrador', '2024-01-01 08:40:00'),
(6, 3, 'membro', '2024-01-01 08:50:00'),
(7, 4, 'administrador', '2024-01-01 09:00:00'),
(8, 5, 'administrador', '2024-01-01 09:10:00'),
(9, 5, 'membro', '2024-01-01 09:20:00'),
(10, 6, 'administrador', '2024-01-01 09:30:00');


INSERT INTO conversas (id_remetente, id_destinatario, data_criacao)
VALUES (11, 12, '2024-11-27 09:00:00');


INSERT INTO conversas (id_remetente, id_destinatario, data_criacao)
VALUES (11, 12, '2024-11-27 09:00:00');


INSERT INTO mensagens (id_conversa, id_remetente, conteudo, status_mensagem, data_envio)
VALUES 
    ((SELECT id_conversa FROM conversas WHERE id_remetente = 11 AND id_destinatario = 12 LIMIT 1), 11, 'Oi, vamos fazer um churras hoje ?', 'enviada', '2024-11-27 09:01:00'),
    ((SELECT id_conversa FROM conversas WHERE id_remetente = 11 AND id_destinatario = 12 LIMIT 1), 12, 'Eu levo a picanha', 'enviada', '2024-11-27 09:02:00'),
    ((SELECT id_conversa FROM conversas WHERE id_remetente = 11 AND id_destinatario = 12 LIMIT 1), 11, 'E eu a linguiça', 'enviada', '2024-11-27 09:03:00');
    
   
INSERT INTO membros (id_usuario, id_grupo, funcao)
VALUES
(1, 1, 'administrador'),  
(2, 1, 'membro'),         
(3, 1, 'membro');         
INSERT INTO membros (id_usuario, id_grupo, funcao)
VALUES
(4, 2, 'membro'),         
(5, 2, 'membro'),         
(6, 2, 'membro');         


INSERT INTO membros (id_usuario, id_grupo, funcao)
VALUES
(1, 3, 'membro'),         
(7, 3, 'administrador'),  
(8, 3, 'membro');         


INSERT INTO membros (id_usuario, id_grupo, funcao)
VALUES
(3, 4, 'membro'),      
(9, 4, 'membro'),        
(4, 4, 'membro'),         
(10, 4, 'administrador'); 


INSERT INTO membros (id_usuario, id_grupo, funcao)
VALUES
(2, 5, 'membro'),         
(6, 5, 'membro'),         
(11, 5, 'membro');        


INSERT INTO membros (id_usuario, id_grupo, funcao)
VALUES
(12, 6, 'membro'),        
(5, 6, 'membro'),         
(7, 6, 'administrador');  


INSERT INTO membros (id_usuario, id_grupo, funcao)
VALUES
(8, 7, 'membro'),         
(3, 7, 'membro'),         
(9, 7, 'membro'),         
(4, 7, 'administrador');  
