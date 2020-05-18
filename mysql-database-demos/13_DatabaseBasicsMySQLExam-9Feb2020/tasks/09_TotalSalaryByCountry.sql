SELECT  con.`name`, COUNT(p.`id`) AS 'player_counts', SUM(p.`salary`) AS 'total_salary'
FROM `countries` AS con
LEFT JOIN `towns` AS t ON t.`country_id` = con.`id`
LEFT JOIN `stadiums` AS s ON t.`id` = s.`town_id`
LEFT JOIN `teams` AS tm ON tm.`stadium_id` = s.`id`
LEFT JOIN `players` AS p ON p.`team_id` = tm.`id`
LEFT JOIN `skills_data` As sd ON sd.`id` = p.`skills_data_id`
GROUP BY con.`name`
ORDER BY `player_counts` DESC, con.name
