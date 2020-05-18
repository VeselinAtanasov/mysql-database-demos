SELECT  MAX(sd.`speed`) AS 'max_speed',t.`name`
FROM `towns` AS t
LEFT JOIN `stadiums` AS s ON t.`id` = s.`town_id`
LEFT JOIN `teams` AS tm ON tm.`stadium_id` = s.`id`
LEFT JOIN `players` AS p ON p.`team_id` = tm.`id`
LEFT JOIN `skills_data` As sd ON sd.`id` = p.`skills_data_id`
WHERE tm.`name` != 'Devify'
GROUP BY t.`name`
ORDER BY `max_speed` DESC, t.`name`