SELECT name as 'Plano', COUNT(name) as 'Quantidade de usuários'
FROM users
JOIN plans ON users.plans_id = plans.id
GROUP BY name
ORDER BY name ASC;