SELECT p.`employee_id`, p.`job_title`, p.`address_id`, a.`address_text`
FROM `employees` AS p
JOIN `addresses` AS a
ON p.`address_id` = a.`address_id`
ORDER BY p.`address_id` ASC
LIMIT 5;