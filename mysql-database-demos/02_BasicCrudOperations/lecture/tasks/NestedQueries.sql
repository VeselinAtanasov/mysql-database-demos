-- nested query
SELECT * 
FROM (SELECT * 
FROM employees
WHERE department_id = 4 AND salary >= 1600
ORDER BY id ASC) AS b
WHERE b.job_title = 'Epidemiologist';

-- using views
CREATE VIEW `v_hr_result_set` AS 
SELECT 
    CONCAT(`first_name`,' ',`last_name`) AS 'Full Name', `salary`
FROM `employees` ORDER BY `department_id`;
SELECT * FROM `v_hr_result_set`;
