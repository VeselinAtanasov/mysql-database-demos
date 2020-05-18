SELECT * FROM 
	(SELECT * 
	FROM `projects`
	ORDER BY `start_date`
	LIMIT 10) AS a
ORDER BY a.`start_date` ASC, a.`name` ASC, a.`project_id` ASC
