SELECT name usuario,
    IF(
        user_id IN (
            SELECT DISTINCT user_id
            FROM SpotifyClone.history
            WHERE
                YEAR(`date`) >= 2021
        ),
        'Usuário ativo',
        'Usuário inativo'
    ) condicao_usuario
FROM SpotifyClone.user
ORDER BY name;