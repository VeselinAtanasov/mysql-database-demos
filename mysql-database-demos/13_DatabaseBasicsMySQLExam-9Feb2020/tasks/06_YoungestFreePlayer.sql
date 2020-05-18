SELECT p.`id`, CONCAT(p.`first_name`, ' ', p.`last_name`) AS 'full_name', p.`age`, p.`position`, p.`hire_date`
FROM `players` AS p
JOIN `skills_data` AS s ON s.`id` = p.`skills_data_id`
WHERE p.`hire_date` IS NULL AND p.`age` < 20 AND p.`position` = 'A' AND s.`strength` >50
ORDER BY p.`salary` ASC, p.`age`