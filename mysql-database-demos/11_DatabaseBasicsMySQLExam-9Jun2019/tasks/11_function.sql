DELIMITER $$
CREATE FUNCTIOn udf_client_cards_count(user_name VARCHAR(30))
RETURNS INT
BEGIN
	DECLARE cards_count INT;
    
    SET cards_count := (SELECT COUNT(cd.`card_number`)
						FROM `clients` AS c
						JOIN `bank_accounts` AS b ON b.`client_id` = c.`id`
						JOIN `cards` AS cd on cd.`bank_account_id` = b.`id`
						WHERE c.`full_name` = user_name
						GROUP BY  c.`full_name`);
	RETURN cards_count;
END
$$