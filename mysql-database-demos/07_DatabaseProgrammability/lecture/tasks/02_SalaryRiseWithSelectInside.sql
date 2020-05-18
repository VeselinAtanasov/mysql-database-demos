CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_raise_salaries`(department_name VARCHAR(25))
BEGIN
		UPDATE  `employees` AS e
		JOIN `departments` as d
		ON e.`department_id` = d.department_id
		SET e.`salary` = e.`salary` * 1.05
		WHERE d.`name` = department_name;
        
        SELECT e.`first_name`, e.`salary`,d.`name`
		FROM `employees` AS e
		JOIN `departments` as d
		ON e.`department_id` = d.department_id
		WHERE d.`name` = department_name;
END