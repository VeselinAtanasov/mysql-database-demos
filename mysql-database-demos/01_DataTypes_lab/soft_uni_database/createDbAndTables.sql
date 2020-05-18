CREATE SCHEMA `soft_uni`;
USE `soft_uni`;

CREATE TABLE `towns` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(25) NOT NULL
);
CREATE TABLE `addresses` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `address_text` VARCHAR(255) NOT NULL,
    `town_id` INT NOT NULL,
    
    CONSTRAINT fk_addresses_towns 
    FOREIGN KEY `addresses` (`town_id`)
	REFERENCES `towns` (`id`)
);
CREATE TABLE `departments` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);
CREATE TABLE `employees` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(45) NOT NULL,
    `middle_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL,
    `job_title` VARCHAR(45) NOT NULL,
    `department_id` INT NOT NULL,
    `hire_date` DATE NOT NULL,
    `salary` DECIMAL NOT NULL,
    `address_id` INT NOT NULL,
    
        CONSTRAINT fk_employess_departments
        FOREIGN KEY `employees` (`department_id`)
        REFERENCES `departments` (`id`),
        
		CONSTRAINT fk_employess_addresses
        FOREIGN KEY `employess` (`address_id`)
        REFERENCES `addresses` (`id`)
);