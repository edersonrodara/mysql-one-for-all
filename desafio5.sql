CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica AS cancao, count(u.usuario) AS reproducoes FROM SpotifyClone.historico_musica hm
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hm.usuario_id
INNER JOIN SpotifyClone.musicas m ON m.musica_id = hm.musica_id GROUP BY cancao ORDER BY reproducoes DESC, cancao LIMIT 2;
