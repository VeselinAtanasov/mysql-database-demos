SELECT p.`name` AS 'planet_name',COUNT(j.`purpose`) AS 'journeys_count'
FROM `planets` AS p
JOIN `spaceports` AS s
ON p.`id` = s.`planet_id`
JOIN `journeys` AS j
ON j.`destination_spaceport_id` = s.`id`
GROUP BY p.`name`
ORDER BY `journeys_count` DESC, p.`name` ASC;