SELECT full_name as 'Nome completo', email as 'E-mail', name as 'Plano'
FROM users
JOIN plans ON users.plans_id = plans.id
ORDER BY full_name ASC;