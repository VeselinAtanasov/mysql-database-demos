DELIMITER $$
CREATE PROCEDURE udp_clientinfo (
	IN  full_name VARCHAR(50))
BEGIN
	SELECT cl.`full_name`, cl.`age`,b.`account_number`,CONCAT('$',b.`balance`) AS 'balance'
	FROM `clients` AS cl
	JOIN `bank_accounts` AS b ON b.`client_id` = cl.`id`
	WHERE cl.`full_name` = full_name;
END
$$