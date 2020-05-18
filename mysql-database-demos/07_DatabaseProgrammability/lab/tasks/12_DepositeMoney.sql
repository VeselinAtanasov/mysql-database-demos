DELIMITER $$
CREATE  PROCEDURE `usp_deposit_money`(
	IN account_id INT,
    IN money_amount DECIMAL(19, 4))
BEGIN
	START TRANSACTION;
    IF (money_amount <=0)
		THEN ROLLBACK;
	ELSE 
		UPDATE `accounts` 
		SET  `balance` = ROUND((`balance` + money_amount),4);
		COMMIT;
	END IF;
END
$$