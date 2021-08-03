CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, m.musica AS nome FROM SpotifyClone.historico_musica hm
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hm.usuario_id
INNER JOIN SpotifyClone.musicas m ON m.musica_id = hm.musica_id ORDER BY usuario, nome;
