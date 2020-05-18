CREATE DATABASE `colonial_blog_db`;
USE `colonial_blog_db`;

CREATE TABLE `users` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(30) NOT NULL UNIQUE,
    `password` VARCHAR(30) NOT NULL,
    `email` VARCHAR(50) NOT NULL
);

CREATE TABLE `categories` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
	`category` VARCHAR(30) NOT NULL  
);


CREATE TABLE `articles` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
	`title` VARCHAR(50) NOT NULL,
	`content` TEXT NOT NULL,
	`category_id` INT,
    
    CONSTRAINT fk_articles_categories  FOREIGN KEY  (`category_id`) REFERENCES `categories`(`id`)
);

CREATE TABLE `users_articles` (
	`user_id` INT,
	`article_id` INT,

	CONSTRAINT fk_users_articles_users
    FOREIGN KEY (`user_id`)
    REFERENCES `users`(`id`),
    
	CONSTRAINT fk_users_articles_articles
    FOREIGN KEY (`article_id`)
    REFERENCES `articles`(`id`)
);

CREATE TABLE `comments` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
	`comment` VARCHAR(255) NOT NULL,
	`article_id` INT NOT NULL,
	`user_id` INT NOT NULL,
    
    CONSTRAINT fk_comments_articles  FOREIGN KEY  (`article_id`) REFERENCES `articles`(`id`),
    CONSTRAINT fk_comments_users  FOREIGN KEY  (`user_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `likes`(
	`id` INT AUTO_INCREMENT PRIMARY KEY,
	`article_id` INT,
	`comment_id` INT,
	`user_id` INT NOT NULL,
    
	CONSTRAINT fk_likes_articles  FOREIGN KEY  (`article_id`) REFERENCES `articles`(`id`),
	CONSTRAINT fk_likes_comments  FOREIGN KEY  (`comment_id`) REFERENCES `comments`(`id`),
	CONSTRAINT fk_likes_users  FOREIGN KEY  (`user_id`) REFERENCES `users`(`id`)
);
