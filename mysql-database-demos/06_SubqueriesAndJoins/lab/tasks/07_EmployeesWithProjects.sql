SELECT e.`employee_id`, e.`first_name`, b.`name` AS 'project_name'
FROM `employees` AS e
JOIN `employees_projects` AS p
ON e.`employee_id` = p.`employee_id`
JOIN `projects` as b
ON b.`project_id` = p.`project_id`
WHERE DATE(b.`start_date`) > '2002-08-13' AND b.`end_date` IS NULL
ORDER BY e.`first_name`, b.`name`
LIMIT 5;