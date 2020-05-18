#CREATE DATABASE `demo_tr`;
#USE `demo_tr`;

CREATE TABLE `passports` (
	`passport_id` INT PRIMARY KEY,
    `passport_number` VARCHAR(30) NOT NULL UNIQUE
);

INSERT INTO `passports` (`passport_id`, `passport_number`) VALUES
(101,'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2');

CREATE TABLE `persons`(
	`person_id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `first_name` VARCHAR(30) NOT NULL,
    `salary` DECIMAL(10,2) NOT NULL,
    `passport_id` INT NOT NULL UNIQUE
);

INSERT INTO `persons` (`person_id`, `first_name`,`salary`,`passport_id`)
VALUES 
(1, 'Roberto', 43300.00, 102),
(2, 'Tom', 56100.00, 103),
(3, 'Yana', 60200.00, 101);

ALTER TABLE `persons` 
ADD CONSTRAINT fk_persons_passports
  FOREIGN KEY (`passport_id`)
  REFERENCES `passports` (`passport_id`);

