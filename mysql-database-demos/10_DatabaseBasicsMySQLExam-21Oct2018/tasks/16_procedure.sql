DELIMITER $$
CREATE PROCEDURE udp_modify_spaceship_light_speed_rate(
	spaceship_name VARCHAR(50), 
    light_speed_rate_increse INT)
BEGIN
	DECLARE doesExist INT;
	START TRANSACTION;
		BEGIN
			SELECT 1 INTO doesExist FROM `spaceships`WHERE `name` = spaceship_name;
             IF(doesExist = 1 )
				THEN
					UPDATE spaceships ss
					SET ss.light_speed_rate = ss.light_speed_rate + light_speed_rate_increse
					WHERE name = spaceship_name;
                    COMMIT;
					
			 ELSE 
					SIGNAL SQLSTATE '45000'
					SET MESSAGE_TEXT = 'Spaceship you are trying to modify does not exists.';
					ROLLBACK;
			 END IF;
        END;
END;
$$