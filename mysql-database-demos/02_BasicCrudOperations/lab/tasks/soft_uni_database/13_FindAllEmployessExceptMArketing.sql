SELECT `first_name`, `last_name`
FROM `employees`
WHERE `department_id` NOT IN (4);

# Second Solution
SELECT `first_name`, `last_name`
FROM `employees`
WHERE `department_id` NOT IN (
	SELECT `department_id` FROM `departments` WHERE `name` = 'Marketing'
	);