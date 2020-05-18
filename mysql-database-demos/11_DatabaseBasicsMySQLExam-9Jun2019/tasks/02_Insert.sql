INSERT INTO `cards` (`card_number`,`card_status`,`bank_account_id`) VALUES
(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 191 ),
    'Active',
    191
),

(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 192 ),
    'Active',
    192
),

(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 193 ),
    'Active',
    193
),

(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 194 ),
    'Active',
    194
),

(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 195 ),
    'Active',
    195
),


(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 196 ),
    'Active',
    196
),

(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 197 ),
    'Active',
    197
),


(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 198 ),
    'Active',
    198
),


(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 199 ),
    'Active',
    199
),


(
	(SELECT DISTINCT REVERSE(c.`full_name`) 
	FROM `clients` AS c
	LEFT JOIN `bank_accounts` AS b ON c.`id` = b.`client_id`
	LEFT JOIN `cards` as cd ON cd.`bank_account_id` = b.`id`
	WHERE c.id = 200 ),
    'Active',
    200
);