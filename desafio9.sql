DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50), IN album VARCHAR(50))
BEGIN

SELECT c.cantor artista, a.album album FROM SpotifyClone.cantores c
INNER JOIN SpotifyClone.albuns a ON a.cantor_id = c.cantor_id ORDER BY album;

END $$

DELIMITER ;
