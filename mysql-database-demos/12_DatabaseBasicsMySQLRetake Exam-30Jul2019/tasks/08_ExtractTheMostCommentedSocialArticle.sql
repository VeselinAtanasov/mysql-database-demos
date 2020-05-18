SELECT a.`title`, COUNT(c.`id`) AS 'comments'
FROM `articles` AS a
JOIN `comments` AS c
ON a.`id` = c.`article_id`
JOIN `categories` as cat
ON cat.`id` = a.`category_id`
WHERE cat.`category` LIKE 'Soc%'
GROUP BY a.`title`
ORDER BY `comments` DESC
LIMIT 1;