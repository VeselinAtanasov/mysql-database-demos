DELIMITER $$
CREATE PROCEDURE usp_get_holders_with_balance_higher_than (
	IN money DOUBLE)
BEGIN
	SELECT ah.`first_name`, ah.`last_name`
	FROM `account_holders` AS ah
	LEFT JOIN `accounts` AS a
	ON a.`account_holder_id` = ah.`id`
	GROUP BY ah.`first_name`, ah.`last_name`
	HAVING sum(a.`balance`)> money
	ORDER BY ah.`id`, ah.`first_name`, ah.`last_name` ;
END;
$$