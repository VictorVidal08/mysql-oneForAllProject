SELECT
ROUND(MIN(s.subscription_price), 2) AS 'faturamento_minimo',
ROUND(MAX(s.subscription_price), 2) AS 'faturamento_maximo',
ROUND(AVG(s.subscription_price), 2) AS 'faturamento_medio',
ROUND(SUM(s.subscription_price), 2) AS 'faturamento_total'
FROM SpotifyClone.Subscription AS s
INNER JOIN SpotifyClone.Users AS u
ON s.subscription_id = u.subscription_id;