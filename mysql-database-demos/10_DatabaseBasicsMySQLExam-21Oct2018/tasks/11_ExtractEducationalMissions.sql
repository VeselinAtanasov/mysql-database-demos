SELECT p.`name` , s.`name`
FROM `planets` AS p
JOIN `spaceports` AS s
ON p.`id` = s.`planet_id`
JOIN `journeys` AS j
ON j.`destination_spaceport_id` = s.`id`
WHERE j.`purpose` LIKE 'Edu%'
ORDER BY s.`name` DESC;