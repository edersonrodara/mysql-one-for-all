CREATE VIEW estatisticas_musicais AS
SELECT count(musica_id) AS cancoes, (SELECT count(*) FROM SpotifyClone.cantores) AS artistas, count(DISTINCT album_id) AS albuns FROM SpotifyClone.musicas;
