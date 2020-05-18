SELECT mc.`country_code`, COUNT(m.`mountain_range`) AS 'mountain_range'
FROM `mountains` AS  m
JOIN `mountains_countries` AS mc
ON mc.`mountain_id` = m.`id`
WHERE mc.`country_code` IN ('RU','BG','US')
GROUP BY mc.`country_code`
ORDER BY `mountain_range` DESC
