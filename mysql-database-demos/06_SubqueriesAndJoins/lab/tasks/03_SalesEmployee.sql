SELECT p.`employee_id`, p.`first_name`, p.`last_name`, d.`name` AS 'department_name'
FROM `employees` AS p
JOIN `departments` AS d
ON p.`department_id` = d.`department_id`
WHERE  d.`name` = 'Sales'
ORDER BY p.`employee_id` DESC;

