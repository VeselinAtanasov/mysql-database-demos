SELECT MIN(`avg_salary_pre_dep`) AS 'min_average_salary'
FROM (
SELECT `department_id`, AVG(`salary`) AS 'avg_salary_pre_dep' 
FROM `employees`
GROUP BY `department_id`
) AS s