SELECT `town_id`,`name` 
FROM `towns`
WHERE UPPER(LEFT(`name`,1)) NOT IN ('R', 'B', 'D'  )
ORDER BY `name`;