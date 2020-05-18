SELECT a.`country_name`,
	(
		SELECT   MAX(p.`elevation`)
		FROM `countries` AS c
		LEFT JOIN  `mountains_countries` AS m
		ON c.`country_code` = m.`country_code`
		LEFT JOIN `mountains` AS mo
		ON mo.`id` = m.`mountain_id`
		LEFT JOIN `peaks` AS p
		ON  mo.`id` = p.`mountain_id`
        WHERE a.`country_name` = c.`country_name`
	) AS highest_peak,
	( 
		SELECT MAX(r.`length`) 
		FROM `countries` AS c
		LEFT JOIN `countries_rivers` AS cr
		ON c.`country_code` = cr.`country_code`
		LEFT JOIN `rivers` AS r
		ON r.`id` = cr.`river_id`
		WHERE a.`country_name` = c.`country_name`
	) AS longest_river_length
FROM countries AS a
 ORDER BY highest_peak DESC, longest_river_length DESC, a.country_name
LIMIT 5;