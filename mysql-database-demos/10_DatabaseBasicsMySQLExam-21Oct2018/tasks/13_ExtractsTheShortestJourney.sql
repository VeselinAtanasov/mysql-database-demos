SELECT 
	j.`id`, 
	p.`name` AS 'planet_name', 
	s.`name` AS 'spaceport_name', 
	j.`purpose` AS 'journey_purpose' 
FROM `planets` AS p
JOIN `spaceports` AS s
ON p.`id` = s.`planet_id`
JOIN `journeys` AS j
ON j.`destination_spaceport_id` = s.`id`
WHERE j.`journey_end` - j.`journey_start` = ( 
	SELECT MIN(`journey_end` - `journey_start`)
    FROM journeys
)