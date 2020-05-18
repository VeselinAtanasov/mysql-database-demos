UPDATE  employees 
SET salary = salary*0.1 +salary
WHERE job_title  = 'Therapist';

SELECT `salary`
FROM employees 
ORDER BY salary ASC