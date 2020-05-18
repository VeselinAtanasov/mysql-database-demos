SELECT `first_name`
FROM `employees`
WHERE `department_id` IN (3,10) 
-- AND `hire_date` BETWEEN '1995-00-00' AND '2005-12-31'
AND EXTRACT(year FROM `hire_date`) BETWEEN '1995' AND '2005'
ORDER BY `employee_id`;
