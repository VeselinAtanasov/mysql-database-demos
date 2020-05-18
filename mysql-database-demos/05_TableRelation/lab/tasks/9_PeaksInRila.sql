SELECT m.`mountain_range`, p.`peak_name`, p.`elevation` 
FROM `peaks` AS p
LEFT JOIN `mountains` AS m
ON m.`id` = p.`mountain_id`
WHERE m.`mountain_range` LIKE '%Ril%'
ORDER BY p.`elevation` DESC;