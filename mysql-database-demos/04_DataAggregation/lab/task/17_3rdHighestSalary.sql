SELECT a.department_id,
(
	SELECT DISTINCT b.salary  
	FROM employees AS b 
	WHERE a.department_id = b.department_id 
	ORDER BY salary DESC 
    LIMIT 1 OFFSET 2 -- LIMIT 2,1;
) AS 'third_highest_salary' 
FROM employees AS a
GROUP BY a.department_id
HAVING `third_highest_salary` IS NOT NULL
ORDER BY a.department_id ASC

