DELIMITER $$
CREATE FUNCTION ufn_get_salary_level (employee_salary DECIMAL)
RETURNS VARCHAR(25)
BEGIN
	DECLARE salary_status VARCHAR(25);
    SET salary_status := (
					CASE
						WHEN employee_salary < 30000 THEN 'Low'
						WHEN employee_salary BETWEEN 30000 AND 50000 THEN 'Average' 
						WHEN employee_salary > 50000 THEN 'High' 
					END );
    
    RETURN salary_status;
END
$$