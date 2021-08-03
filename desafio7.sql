CREATE VIEW perfil_artistas AS
SELECT c.cantor artista, a.album album, count(sa.cantor_id) seguidores FROM SpotifyClone.cantores c
INNER JOIN SpotifyClone.albuns a ON c.cantor_id = a.cantor_id
INNER JOIN SpotifyClone.seguir_artistas sa ON sa.cantor_id = c.cantor_id GROUP BY artista, album ORDER BY seguidores DESC, artista, album;
