SELECT id, first_name, last_name, job_title  FROM employees ORDER BY id ASC;

-- double ordering
SELECT id, first_name, last_name, job_title  FROM employees ORDER BY first_name ASC, last_name DESC;
-- concat
SELECT concat(`first_name`, ' ', `last_name`) AS 'Full Name' FROM `employees`;

-- concat_ws
SELECT concat_ws(' ', `first_name`, `last_name`,`id`) AS 'Full Name' FROM `employees`;