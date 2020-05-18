DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_count_employee`(
	IN town_name VARCHAR(20),
    OUT e_count INT
)
BEGIN
SET e_count =  (SELECT COUNT(e.`employee_id`) FROM employees AS e
	INNER JOIN addresses AS a ON a.address_id = e.address_id
	INNER JOIN towns AS t ON t.town_id = a.town_id
	WHERE t.name = town_name);
END;
$$
SET @count=0;
call usp_count_employee ('Seattle',@count);
SELECT @count;