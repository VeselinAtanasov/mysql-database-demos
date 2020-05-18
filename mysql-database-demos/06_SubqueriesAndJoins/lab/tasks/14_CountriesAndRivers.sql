SELECT c.`country_name`, /*c.`continent_code`,cr.`country_code`,*/ r.`river_name`
FROM `countries` AS c
LEFT JOIN `countries_rivers` AS cr
ON cr.`country_code` = c.`country_code`
LEFT JOIN `rivers` as r
ON r.`id` = cr.`river_id`
WHERE c.`continent_code` = 'AF'
ORDER BY c.`country_name` ASC
LIMIT 5;