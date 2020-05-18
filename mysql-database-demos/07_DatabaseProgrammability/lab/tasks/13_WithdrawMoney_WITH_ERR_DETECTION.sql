DELIMITER $$
CREATE PROCEDURE `usp_withdraw_money_err`(
	IN account_id INT,
    IN money_amount DECIMAL(19,4),
    OUT errCode INT)
BEGIN
 DECLARE current_balance DECIMAL;
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		SET errCode = -1;
        ROLLBACK;
	END;

	START TRANSACTION;
		IF(money_amount<=0)
			THEN
				SET errCode = -2;
				ROLLBACK;
		END IF;
		
	  #  SELECT `balance` INTO current_balance FROM `accounts` WHERE `id` =  account_id;
	   SET current_balance = (SELECT `balance` FROM `accounts` WHERE `id` =  account_id);
	  
		  IF(current_balance <= 0 OR (current_balance-money_amount) < 0)
			THEN 
				SET errCode = -3;
				ROLLBACK;
		  END IF;
		  
		  UPDATE `accounts` SET `balance` = ROUND((`balance` - money_amount),4)  WHERE `id` = account_id;
		  SET errCode = 1;
		  COMMIT;
END;
$$