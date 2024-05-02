-- Ativar a usuária Andressa
UPDATE users
SET active = true
WHERE full_name = 'Andressa';

-- Desativar o usuário Rogério
UPDATE users
SET active = false
WHERE full_name = 'Rogério';

-- Alterar o plano ativo da usuária Camila para o plano Mensal
UPDATE users
SET plan_id = 2
WHERE full_name = 'Camila';
