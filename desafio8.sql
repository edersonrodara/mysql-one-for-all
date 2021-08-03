DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguir_artistas
WHERE OLD.usuario_id = usuario_id;
DELETE FROM SpotifyClone.historico_musica
WHERE OLD.usuario_id = usuario_id;
END $$

DELIMITER $$ ;
