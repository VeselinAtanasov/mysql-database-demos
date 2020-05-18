SELECT e.`employee_id`, e.`first_name`, IF(EXTRACT(YEAR FROM b.`start_date`)>='2005', NULL, b.`name`) AS 'project_name'
FROM `employees` AS e
JOIN `employees_projects` AS p
ON e.`employee_id` = p.`employee_id`
JOIN `projects` as b
ON b.`project_id` = p.`project_id`
WHERE e.`employee_id` = 24 
ORDER BY `project_name`;


-- second 
SELECT e.employee_id, e.first_name,
    CASE
		WHEN YEAR(p.start_date) > 2004 THEN NULL
        ELSE p.name
    END AS project_name
FROM employees e
INNER JOIN employees_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON p.project_id = ep.project_id
WHERE e.employee_id = 24
ORDER BY p.name;