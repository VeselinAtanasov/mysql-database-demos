CREATE SCHEMA `car_rental`;
USE `car_rental`;


CREATE TABLE `categories` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `category` VARCHAR(20) NOT NULL,
    `daily_rate` DECIMAL NOT NULL,
    `weekly_rate` DECIMAL NOT NULL,
    `monthly_rate` DECIMAL NOT NULL,
    `weekend_rate` DECIMAL NOT NULL
);
CREATE TABLE `cars` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `plate_number` VARCHAR(20) NOT NULL,
    `make` VARCHAR(20),
    `model` VARCHAR(20),
    `car_year` DATE ,
    `category_id` INT NOT NULL,
    `doors` INT ,
    `picture` BLOB,
    `car_condition` TEXT,
    `available` BOOLEAN NOT NULL,
    
    CONSTRAINT fk_cars_categories
    FOREIGN KEY `cars` (`category_id`)
    REFERENCES `categories` (`id`)
);
CREATE TABLE `employees`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `title` VARCHAR(20),
    `notes` TEXT
);
CREATE TABLE `customers`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `driver_licence_number` INT NOT NULL,
    `full_name` VARCHAR(20) NOT NULL,
    `address` VARCHAR(50),
    `city` VARCHAR(20),
    `zip_code` INT,
    `notes` TEXT
);
CREATE TABLE `rental_orders`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `employee_id` INT NOT NULL,
    `customer_id` INT NOT NULL,
    `car_id` INT NOT NULL,
    `car_condition` VARCHAR(50),
    `tank_level` INT,
    `kilometrage_start` INT,
    `kilometrage_end` INT,
    `total_kilometrage` INT,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `total_days` INT NOT NULL,
    `rate_applied`  VARCHAR(20) NOT NULL,
    `tax_rate` DECIMAL,
    `order_status` VARCHAR(20),
    `notes` TEXT,
    
    CONSTRAINT fk_rental_employees
    FOREIGN KEY `rental_orders` (`employee_id`)
    REFERENCES `employees` (`id`),
    
	CONSTRAINT fk_rental_customers
    FOREIGN KEY `rental_orders` (`customer_id`)
    REFERENCES `customers` (`id`),
    
	CONSTRAINT fk_rental_cars
    FOREIGN KEY `rental_orders` (`car_id`)
    REFERENCES `cars` (`id`)
);


INSERT INTO `categories` (`category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`) VALUES ("normal", 1, 2, 3, 4);
INSERT INTO `categories` (`category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`) VALUES ("Premium", 3, 4, 5, 7);
INSERT INTO `categories` (`category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`) VALUES ("VIP", 3, 4, 5, 6);

INSERT INTO `cars` (`plate_number`, `category_id`, `available`, `make`) VALUES ("ASD34", 3, 1, "Opel");
INSERT INTO `cars` (`plate_number`, `category_id`, `available`, `doors`) VALUES ("ASDASD11", 1, 0, 6);
INSERT INTO `cars` (`plate_number`, `category_id`, `available`) VALUES ("LLL44", 2, 0);

INSERT INTO `employees` (`first_name`, `last_name`, `title`) VALUES ("Ivo", "Petrov", "Mechanic");
INSERT INTO `employees` (`first_name`, `last_name`, `title`) VALUES ("Ivan", "Ivanovich", "Sales");
INSERT INTO `employees` (`first_name`, `last_name`, `title`, `notes`) VALUES ("Pesho", "Goshov", "Cashier", "to be fired");

INSERT INTO `customers` (`driver_licence_number`, `full_name`, `address`) VALUES ("132123", "Ivo Petrov", "sofia 12");
INSERT INTO `customers` (`driver_licence_number`, `full_name`, `city`) VALUES ("4442", "Pesho ok", "Sofia");
INSERT INTO `customers` (`driver_licence_number`, `full_name`) VALUES ("4441242", "Ivanovich Ivon");

INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `start_date`, `end_date`, `total_days`, `rate_applied`) VALUES (1, 1, 2, "2019-11-29", "2019-12-05", 6, "weekly");
INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `start_date`, `end_date`, `total_days`, `rate_applied`) VALUES (2, 1, 2, "2020-01-01", "2020-01-03", 2, "daily");
INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `start_date`, `end_date`, `total_days`, `rate_applied`) VALUES (2, 3, 2, "2019-12-12", "2019-12-15", 3, "daily");