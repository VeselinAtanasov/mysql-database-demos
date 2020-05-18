DELIMITER $$
CREATE PROCEDURE usp_transfer_money(
	IN from_account_id INT,
    IN to_account_id INT,
    IN amount DECIMAL(19,4)) 
BEGIN
	DECLARE does_from_account_exists INT;
	DECLARE does_to_account_exists INT;
	DECLARE from_current_balance DECIMAL;
	DECLARE to_current_balance DECIMAL;
    
    START TRANSACTION;
		IF(amount <=0) OR (from_account_id = to_account_id)
			THEN ROLLBACK;
		ELSE
			SET does_from_account_exists = (SELECT COUNT(*) FROM `accounts` WHERE `id` = from_account_id);
			SET does_to_account_exists = (SELECT COUNT(*) FROM `accounts` WHERE `id` = to_account_id);
            
            IF(does_from_account_exists <> 1) OR (does_to_account_exists <> 1)
				THEN ROLLBACK;
            ELSE 
				SET from_current_balance = (SELECT `balance` FROM `accounts` WHERE `id` = from_account_id);
				SET to_current_balance = (SELECT `balance` FROM `accounts` WHERE `id` = to_account_id);
                
					IF(from_current_balance <= 0) OR (from_current_balance - amount) < 0 
						THEN ROLLBACK;
                    ELSE 
						UPDATE `accounts` SET `balance` = `balance` - amount WHERE `id` = from_account_id;
						UPDATE `accounts` SET `balance` = `balance` + amount WHERE `id` = to_account_id;
                        COMMIT;
					END IF;
			END IF;
           
        END IF;
END;
$$