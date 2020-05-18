SELECT a.`town_id`,	a.`name` AS 'town_name',	b.`address_text` 
FROM  `addresses` AS b
JOIN `towns` AS a
ON b.`town_id` = a.`town_id`
WHERE a.`name` IN ('San Francisco', 'Sofia' ,'Carnation')
ORDER BY a.`town_id`, b.`address_id`