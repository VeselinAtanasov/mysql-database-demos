DELIMITER $$
CREATE PROCEDURE usp_get_employees_by_salary_level (
	IN salary_level VARCHAR(10)
    )
BEGIN
	SELECT e.first_name, e.last_name
    FROM employees e
    WHERE
		CASE 
			WHEN salary_level = 'Low' THEN e.salary < 30000
			WHEN salary_level = 'Average' THEN e.salary <= 50000
			WHEN salary_level = 'High' THEN e.salary > 50000
		END
    ORDER BY e.first_name DESC, e.last_name DESC;
END
$$