SELECT full_name AS 'Nome completo', birthday AS 'Data de nascimento'
FROM users
WHERE ACTIVE = true AND YEAR(birthday) >= 1990;