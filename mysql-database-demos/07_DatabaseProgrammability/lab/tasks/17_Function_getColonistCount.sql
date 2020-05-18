DELIMITER $$
CREATE FUNCTION udf_count_colonists_by_destination_planet (planet_name VARCHAR (30))
RETURNS INT
BEGIN
	DECLARE c_count INT;
    
    SET c_count := (
				SELECT COUNT(c.`id`) AS 'colonist_number'
				FROM `planets` AS p
				JOIN `spaceports` AS s ON p.`id` = s.`planet_id`
				JOIN `journeys` AS j ON j.`destination_spaceport_id` = s.`id`
				JOIN `travel_cards` as t ON t.`journey_id` = j.`id`
				JOIN `colonists` AS c ON c.`id` = t.`colonist_id`
				WHERE p.`name` = planet_name
                );
    
    RETURN c_count;
END;
$$
