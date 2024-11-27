-- Adiciona um timestamp automáticamente quando o usuário desloga do sistema

DELIMITER $$

CREATE PROCEDURE RegistrarSaida(IN token_usuario VARCHAR(255))
BEGIN
    UPDATE Sessao
    SET Hora_Saida = CURRENT_TIMESTAMP
    WHERE Token = token_usuario AND Hora_Saida IS NULL;
END$$

DELIMITER ;
