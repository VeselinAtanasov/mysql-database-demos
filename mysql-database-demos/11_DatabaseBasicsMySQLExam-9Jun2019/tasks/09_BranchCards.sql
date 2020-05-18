SELECT  b.`name`, COUNT(ca.card_number) AS 'count_of_cards'
FROM `branches` AS b
LEFT JOIN `employees` AS emp ON b.`id` = emp.`branch_id`
LEFT JOIN `employees_clients` AS ec ON ec.`employee_id` = emp.`id`
LEFT JOIN `clients` AS c ON c.`id` = ec.`client_id`
LEFT JOIN `bank_accounts` AS ba ON ba.`client_id` = c.`id`
LEFT JOIN `cards` AS ca ON ca.`bank_account_id` = ba.`id`
GROUP BY b.`name`
ORDER BY `count_of_cards` DESC, b.`name`
