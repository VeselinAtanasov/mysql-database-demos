DELIMITER $$
CREATE PROCEDURE usp_get_employees_by_salary_level (
	IN salary_level VARCHAR(10)
    )
BEGIN
	IF salary_level = 'Low'  THEN
			SELECT e.first_name, e.last_name
			FROM employees e
			WHERE e.salary < 30000
			ORDER BY e.first_name DESC, e.last_name DESC;
	END IF;
    
	IF (salary_level = 'Average' ) THEN
			SELECT e.first_name, e.last_name
			FROM employees e
			WHERE e.salary BETWEEN 30000 AND 50000
			ORDER BY e.first_name DESC, e.last_name DESC;
    END IF;
    
    IF(salary_level = 'High') THEN
			SELECT e.first_name, e.last_name
			FROM employees e
			WHERE e.salary > 50000
			ORDER BY e.first_name DESC, e.last_name DESC;
	END IF;
END
$$