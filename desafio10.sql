DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE resultado INT;
    SELECT count(*) FROM SpotifyClone.historico_musica WHERE usuario_id = id INTO resultado;
    RETURN resultado;
END $$

DELIMITER ;
