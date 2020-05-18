DELIMITER $$
CREATE FUNCTION udf_users_articles_count(username VARCHAR(30))
RETURNS INT
BEGIN
	DECLARE own_articles INT;
		
        SET own_articles := (SELECT COUNT(a.`id`)
							FROM `users` AS u 
							JOIN `users_articles` AS ua ON ua.`user_id` = u.`id`
							JOIN `articles` AS a on ua.`article_id` = a.`id`
							WHERE u.`username` = username
							GROUP BY u.`username`);
        
    RETURN own_articles;
END
$$