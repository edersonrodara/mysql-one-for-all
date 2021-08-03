CREATE VIEW top_3_artistas AS
SELECT c.cantor artista, count(*) seguidores FROM SpotifyClone.seguir_artistas sa INNER JOIN SpotifyClone.cantores c ON c.cantor_id = sa.cantor_id GROUP BY artista ORDER BY seguidores DESC, artista LIMIT 3;
