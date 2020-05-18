

UPDATE `coaches` AS c
JOIN `players_coaches` AS pc ON pc.`coach_id` = c.`id`
SET `coach_level` = `coach_level`+1
WHERE c.`first_name` LIKE('A%')
