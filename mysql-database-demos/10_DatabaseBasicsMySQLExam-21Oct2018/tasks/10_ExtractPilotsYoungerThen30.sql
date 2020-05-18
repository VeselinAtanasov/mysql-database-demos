SELECT s.`name`, s.`manufacturer` 
FROM `spaceships` AS s
JOIN `journeys` AS j
ON j.`spaceship_id` = s.`id`
JOIN `travel_cards` AS t
ON t.`journey_id` = j.`id`
JOIN `colonists` c
ON c.`id` = t.`colonist_id`
WHERE year(c.`birth_date`) > year(DATE_SUB('2019-01-01', INTERVAL 30 YEAR)) and t.`job_during_journey` = 'Pilot'
ORDER BY s.name;


