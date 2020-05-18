SELECT COUNT(*) AS 'count'
FROM `colonists` AS c
JOIN `travel_cards` AS t
ON t.`colonist_id` = c.`id`
JOIN `journeys` AS j 
ON j.`id` = t.`journey_id`
WHERE j.`purpose` = 'Technical'
