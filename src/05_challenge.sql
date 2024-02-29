SELECT full_name AS `Nome`, birthday AS `Data de Nascimento`
FROM users
WHERE active = true
AND YEAR(birthday) >= 1990;
