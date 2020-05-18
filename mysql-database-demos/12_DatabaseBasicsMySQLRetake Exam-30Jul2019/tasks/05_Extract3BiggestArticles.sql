SELECT a.`title`, a.`summary` FROM (
				SELECT `id`,`title`, CONCAT(LEFT(`content`, 20),'...') AS 'summary' 
				FROM `articles`
				ORDER BY CHAR_LENGTH(`content`) DESC
				LIMIT 3
			) AS a
ORDER BY a.`id`