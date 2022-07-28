SELECT MIN(p.valor) faturamento_minimo,
    MAX(p.valor) faturamento_maximo,
    ROUND(AVG(p.valor), 2) faturamento_medio,
    SUM(p.valor) faturamento_total
FROM SpotifyClone.user u
    INNER JOIN plan p ON u.plan_id = p.plan_id;