CREATE TABLE `notification_emails` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `recipient` INT NOT NULL,
    `subject` VARCHAR(50),
    `body` VARCHAR(255)
);
DELIMITER $$
CREATE TRIGGER tr_on_insert_in_log_table
AFTER INSERT
ON `logs`
FOR EACH ROW
BEGIN
	DECLARE current_subject VARCHAR(50);
	DECLARE current_body VARCHAR(255);
    
    SET  current_subject = CONCAT('Balance change for account:', ' ',NEW.account_id);
    SET current_body = CONCAT('On ', DATE(NOW()), ' your balance was changed from ', NEW.old_sum,' to ',NEW.new_sum,'.');

 INSERT INTO `notification_emails` (`recipient`,`subject`,`body`)
 VALUES (NEW.account_id, current_subject, current_body);
END;
$$