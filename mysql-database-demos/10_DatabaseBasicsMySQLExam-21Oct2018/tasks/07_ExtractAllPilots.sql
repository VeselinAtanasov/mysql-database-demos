SELECT c.`id`, CONCAT(c.`first_name`, ' ', c.`last_name`) AS 'full_name'
FROM `colonists` AS c
JOIN `travel_cards` AS t
ON t.`colonist_id` = c.`id`
WHERE `job_during_journey` = 'Pilot'
ORDER BY id ASC;