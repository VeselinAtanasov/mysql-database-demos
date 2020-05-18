DELIMITER $$
CREATE PROCEDURE usp_calculate_future_value_for_account (
	IN account_id INT,
    IN rate DECIMAL)
BEGIN

   DECLARE current_balance DOUBLE;
   	SELECT 
		a.`balance`  INTO current_balance
	FROM `account_holders` AS ah
	LEFT JOIN `accounts` AS a
	ON a.`account_holder_id` = ah.`id`
    WHERE a.`id` = account_id
    GROUP BY ah.`id`;

	SELECT 
		a.`id` AS 'account_id',
		ah.`first_name`,
		ah.`last_name`,
		a.`balance` AS 'current_balance',
		(SELECT ufn_calculate_future_value(current_balance, rate, 5) ) AS 'balance_in_5_years'
	FROM `account_holders` AS ah
	LEFT JOIN `accounts` AS a
	ON a.`account_holder_id` = ah.`id`
    WHERE a.`id` = account_id;
END
$$