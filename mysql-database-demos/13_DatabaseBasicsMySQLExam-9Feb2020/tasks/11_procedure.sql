DELIMITER $$
CREATE PROCEDURE udp_find_playmaker (
	IN min_dribble_points INT,
    IN  team_name VARCHAR(45))
BEGIN
	DECLARE average_speed DECIMAL;
    
    SET average_speed = (SELECT AVG(speed) FROM skills_data);
    
    SELECT  
    CONCAT(p.`first_name`, ' ', p.`last_name`),
    p.`age`,
    p.`salary`,
    sd.`dribbling`,
    sd.`speed`,
    tm.`name`
    
	FROM `countries` AS con
	JOIN `towns` AS t ON t.`country_id` = con.`id`
	JOIN `stadiums` AS s ON t.`id` = s.`town_id`
	JOIN `teams` AS tm ON tm.`stadium_id` = s.`id`
	JOIN `players` AS p ON p.`team_id` = tm.`id`
	JOIN `skills_data` As sd ON sd.`id` = p.`skills_data_id`
    WHERE tm.`name` = team_name AND sd.`dribbling` > min_dribble_points AND sd.`speed` > average_speed
    ORDER BY sd.`speed` DESC
    LIMIT 1;
END;
$$

