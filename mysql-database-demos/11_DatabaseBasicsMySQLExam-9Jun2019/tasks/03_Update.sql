SELECT  c.id, c.full_name, c.age, ec.client_id,ec.employee_id
FROM `clients` AS c
LEFT JOIN `employees_clients` AS ec ON c.`id` = ec.`client_id`
WHERE c.id = ec.employee_id;
--
(SELECT a.id FROM(
SELECT  e.id, e.first_name,COUNT(ec.client_id) AS count_client
FROM `employees` AS e
JOIN `employees_clients` AS ec ON e.`id` = ec.`employee_id`
GROUP BY e.id, e.first_name
ORDER BY `count_client` ,e.`id`
LIMIT 1) AS a);


-- UPDATE QUERY:

UPDATE `clients` AS c 
LEFT JOIN `employees_clients` AS ec ON c.`id` = ec.`client_id`
	SET ec.`employee_id` = (SELECT a.id FROM(
		SELECT  e.`id`, e.`first_name`,COUNT(ecc.`client_id`) AS 'count_client'
		FROM `employees` AS e
		JOIN `employees_clients` AS ecc ON e.`id` = ecc.`employee_id`
		GROUP BY e.`id`, e.`first_name`
		ORDER BY `count_client` ,e.`id`
		LIMIT 1) AS a)
WHERE  c.id = ec.employee_id;
