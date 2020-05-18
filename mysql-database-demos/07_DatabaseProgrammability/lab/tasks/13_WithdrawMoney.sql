DELIMITER $$
CREATE PROCEDURE usp_withdraw_money(
	IN account_id INT,
    IN money_amount DECIMAL(19,4)) 
BEGIN
    DECLARE current_balance DECIMAL;
	START TRANSACTION;
    
     SELECT `balance` INTO current_balance FROM `accounts` WHERE `id` =  account_id;
  #  SET current_balance = (SELECT `balance` FROM `accounts` WHERE `id` =  account_id);
  
    IF(money_amount<=0)
		THEN ROLLBACK;
	ELSEIF(current_balance <=0) 
		THEN ROLLBACK;
	ELSEIF(current_balance-money_amount < 0)
		THEN ROLLBACK;
	ELSE 
	  UPDATE `accounts` SET `balance` = (`balance` - money_amount)  WHERE `id` = account_id;
      COMMIT;
	  END IF;
END
$$