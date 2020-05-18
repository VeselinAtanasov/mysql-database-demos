CREATE SCHEMA `movies`;

USE `movies`;

CREATE TABLE `directors` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `director_name` VARCHAR(45) NOT NULL,
    `notes` TEXT NULL
);
CREATE TABLE `genres` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `genre_name` VARCHAR(45) NOT NULL,
    `notes` TEXT NULL
);
CREATE TABLE `categories` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `category_name` VARCHAR(45) NOT NULL,
    `notes` TEXT NULL
);
CREATE TABLE `movies` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(45) NOT NULL,
    `director_id` INT NOT NULL,
    `copyright_year` DATE NULL,
    `length` TIME NULL,
    `genre_id` INT NOT NULL,
    `category_id` INT NOT NULL,
    `rating` DECIMAL NOT NULL,
    `notes` TEXT NULL,
    
    CONSTRAINT fk_movies_directors
    FOREIGN KEY `movies` (`director_id`)
    REFERENCES `directors` (`id`),
    
    CONSTRAINT fk_movies_genres
    FOREIGN KEY `movies` (`genre_id`)
    REFERENCES `genres`(`id`),
    
    CONSTRAINT fk_movies_categories
    FOREIGN KEY `movies`(`category_id`)
    REFERENCES `categories`(`id`)
);

INSERT INTO `directors`(`director_name`) VALUES ("Ivan");
INSERT INTO `directors` (`director_name`, `notes`) VALUES ("Pesho", "Very good");
INSERT INTO `directors` (`director_name`) VALUES ("Gosho");
INSERT INTO `directors` (`director_name`, `notes`) VALUES ("DIDI", "Cool guy");
INSERT INTO `directors` (`director_name`) VALUES ("Pipi");

INSERT INTO `genres` (`genre_name`) VALUES ("action");
INSERT INTO `genres` (`genre_name`) VALUES ("Sci-fi");
INSERT INTO `genres` (`genre_name`, `notes`) VALUES ("Documentary", "Love em");
INSERT INTO `genres` (`genre_name`) VALUES ("animu");
INSERT INTO `genres` (`genre_name`) VALUES ("Horror");

INSERT INTO `categories` (`category_name`) VALUES ("TV-series");
INSERT INTO `categories` (`category_name`) VALUES ("Russian");
INSERT INTO `categories` (`category_name`) VALUES ("Low-Budget");
INSERT INTO `categories` (`category_name`, `notes`) VALUES ("18+", "Dont look");
INSERT INTO `categories` (`category_name`) VALUES ("Classics");

INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`, `rating`) VALUES ("LOTR", 1, 2, 3, 3.5);
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`, `rating`, `length`) VALUES ("Heat", 2, 3, 3, 4.5, "02:36:00");
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`, `rating`, `copyright_year`) VALUES ("Ocean", 4, 2, 3, 3.5, CURDATE());
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`, `rating`, `notes`) VALUES ("Warcraft", 4, 1, 3, 2.5, "not good");
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`, `rating`) VALUES ("Sunshine", 1, 2, 3, 4.5);