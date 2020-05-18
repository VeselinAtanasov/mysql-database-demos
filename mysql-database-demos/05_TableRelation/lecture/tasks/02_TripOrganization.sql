SELECT a.`driver_id`, a.`vehicle_type` , CONCAT(b.`first_name`, ' ', b.`last_name`) AS 'driver_name'
FROM `vehicles` AS a
JOIN `campers` AS b
ON a.`driver_id` = b.`id`
