DELIMITER $$
CREATE PROCEDURE usp_get_towns_starting_with (
	IN town_name_patt VARCHAR(20) 
)
BEGIN
	SELECT `name`  AS 'town_name'
	FROM `towns`
	WHERE `name` LIKE(CONCAT(town_name_patt,'%'))
	ORDER BY `name`;
END
$$