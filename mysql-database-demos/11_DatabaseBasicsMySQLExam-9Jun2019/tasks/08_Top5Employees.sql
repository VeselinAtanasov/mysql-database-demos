SELECT CONCAT(e.`first_name`, ' ', e.`last_name`) AS 'name', `started_on`, COUNT(ec.`client_id`) AS 'count_of_clients'
FROM `employees` AS e
LEFT JOIN `employees_clients` AS ec ON e.`id` = ec.`employee_id`
GROUP BY `name`, `started_on`
ORDER BY `count_of_clients` DESC, e.`id` ASC
LIMIT 5;