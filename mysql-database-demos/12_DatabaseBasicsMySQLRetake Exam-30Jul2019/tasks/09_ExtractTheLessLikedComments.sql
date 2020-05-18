SELECT CONCAT(LEFT(c.`comment`,20),'...') AS 'summary'
FROM `comments` AS c
LEFT JOIN `likes` as l ON l.`comment_id` = c.`id`
WHERE `comment_id` IS NULL
ORDER BY c.`id` DESC
