SELECT 
    a.`first_name`, a.`last_name`, a.`salary`, b.`name`
FROM
    `employees` AS a
        JOIN
    `departments` AS b ON a.`department_id` = b.`id`;