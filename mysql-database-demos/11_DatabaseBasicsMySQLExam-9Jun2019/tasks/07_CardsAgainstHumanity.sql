SELECT c.`id`, CONCAT(c.`card_number`,' : ', ct.`full_name`)
FROM `cards` AS c
JOIN `bank_accounts` AS b ON b.`id` = c.`bank_account_id`
JOIN `clients` as ct ON ct.`id` = b.`client_id`
ORDER BY c.`id` DESC
