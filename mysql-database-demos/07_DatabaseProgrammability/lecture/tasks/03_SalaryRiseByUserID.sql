DELIMITER $$
CREATE PROCEDURE usp_raise_salary_by_id2(IN userID INT)
BEGIN
 DECLARE does_exists INT;
  SET does_exists = (SELECT COUNT(`employee_id`) FROM `employees` WHERE `employee_id` = userID);
  UPDATE employees AS e SET salary = salary + salary*0.05 WHERE e.employee_id = userID;
	START TRANSACTION;
   
		IF(does_exists = 0 )
			THEN
				ROLLBACK;
			ELSE 
				COMMIT;
	END IF; 
    
   # SELECT first_name, `salary` FROM `employees` WHERE `employee_id` = userID;
END 
$$