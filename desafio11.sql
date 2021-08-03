CREATE VIEW cancoes_premium AS
SELECT m.musica nome, count(hm.musica_id) reproducoes FROM SpotifyClone.historico_musica hm 
INNER JOIN SpotifyClone.musicas m ON hm.musica_id = m.musica_id
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hm.usuario_id WHERE u.usuario_id IN(2, 3)
GROUP BY nome ORDER BY nome;
