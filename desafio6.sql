CREATE VIEW faturamento_atual AS
SELECT min(p.valor_plano) faturamento_minimo, max(p.valor_plano) faturamento_maximo, round(avg(p.valor_plano), 2) faturamento_medio, round(sum(p.valor_plano), 2) faturamento_total FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.planos p ON p.plano_id = u.plano_id;
