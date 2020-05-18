SELECT s.`name`, sp.`name`
FROM `spaceships` AS s
JOIN `journeys` as j
ON s.`id` = j.`spaceship_id`
JOIN `spaceports` as sp
ON j.`destination_spaceport_id` = sp.`id`
ORDER BY s.`light_speed_rate` DESC
LIMIT 1;