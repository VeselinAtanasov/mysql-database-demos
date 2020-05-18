CREATE TABLE `mountains` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `peaks` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `mountain_id` INT(11) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `pk_peaks_mountains` FOREIGN KEY(`mountain_id`) REFERENCES `mountains` (`id`)
);