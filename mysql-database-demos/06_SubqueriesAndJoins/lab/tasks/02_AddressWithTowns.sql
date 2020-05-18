SELECT p.`first_name`, p.`last_name`, t.`name`, a.`address_text`
FROM `employees` AS p
JOIN `addresses` AS a
ON p.`address_id` = a.`address_id`
JOIN `towns` AS t
ON t.`town_id` = a.`town_id`
ORDER BY p.`first_name`, p.`last_name`
LIMIT 5;
