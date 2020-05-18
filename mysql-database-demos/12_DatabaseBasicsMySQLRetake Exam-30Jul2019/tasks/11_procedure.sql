DELIMITER $$
CREATE  PROCEDURE `udp_like_article`(
	IN username VARCHAR(30), 
    IN title VARCHAR(30))
BEGIN
	DECLARE userExists INT;
	DECLARE current_user_id INT;
    DECLARE articleExists INT;
    DECLARE current_article_id INT;
    
    START TRANSACTION;
		BEGIN
			SELECT 1, u.`id` INTO userExists, current_user_id FROM `users` AS u WHERE u.`username` = username;
				
                IF (userExists IS NULL)
					THEN 
						SIGNAL SQLSTATE '45000'
						SET MESSAGE_TEXT = 'Non-existent user.';
						ROLLBACK;
				ELSE
					SELECT 1, a.`id` INTO articleExists, current_article_id FROM `articles` AS a WHERE a.`title` = title;
						IF(articleExists IS NULL)
							THEN 
								SIGNAL SQLSTATE '45000'
								SET MESSAGE_TEXT = 'Non-existent article.';
								ROLLBACK;
							ELSE
                            INSERT INTO `likes` (`article_id`,`user_id`) VALUES (current_article_id,current_user_id);
								COMMIT;
                        END IF;
                END IF;

        END;
END
$$