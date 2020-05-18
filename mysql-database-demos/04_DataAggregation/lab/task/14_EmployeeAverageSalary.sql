-- Better solution
	SELECT department_id,
	AVG(IF(department_id=1 , salary + 5000, salary)) AS salary
	FROM employees
	WHERE salary > 30000 AND manager_id NOT IN(42)
    GROUP BY department_id
    ORDER BY department_id;

-- Not so good
SELECT a.department_id, AVG(a.salary)
FROM (
	SELECT department_id,
	IF(department_id=1 , salary + 5000, salary) AS salary
	FROM employees
	WHERE salary > 30000 AND manager_id NOT IN(42)
    ) AS a
GROUP BY a.department_id
ORDER BY department_id ASC;

-- -- Another solution:
CREATE TABLE `high_paid_employees`
SELECT * FROM `employees`
WHERE `salary` > 30000;

DELETE FROM `high_paid_employees`
WHERE `manager_id` = 42;

UPDATE `high_paid_employees`
SET `salary` = `salary` + 5000
WHERE `department_id` = 1;

SELECT `department_id`, AVG(`salary`) AS `average_salary`
FROM `high_paid_employees`
GROUP BY `department_id`
ORDER BY `department_id`;