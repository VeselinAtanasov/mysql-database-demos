SELECT a.first_name, a.last_name, a.department_id
FROM  employees AS a
WHERE a.salary > (
	SELECT AVG(b.salary) 
	FROM employees AS b WHERE a.department_id = b.department_id
	GROUP BY b.department_id  
 )
ORDER BY a.department_id,a.employee_id
LIMIT 10