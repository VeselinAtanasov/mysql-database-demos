SELECT c.`category`, (
		SELECT COUNT(`id`) FROM `articles`
		WHERE c.`id` = `category_id`
		) AS 'articles',
 (
		SELECT COUNT(l.`id`)
		FROM `articles` AS a
		JOIN `likes` AS l ON l.`article_id` = a.`id`
		WHERE c.`id` = a.`category_id`
		 ) AS 'likes' 
FROM `categories` AS c
ORDER BY `likes` DESC, `articles` DESC, c.`id` ASC