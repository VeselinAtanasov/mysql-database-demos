DELIMITER $$
CREATE PROCEDURE usp_get_employees_salary_above(IN salary_value DOUBLE)
BEGIN
	SELECT `first_name`, `last_name`
	FROM `employees`
	WHERE `salary` >= salary_value
	ORDER BY `first_name`, `last_name`, `employee_id` ASC;
END
$$