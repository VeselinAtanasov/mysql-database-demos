SELECT 
    `peak_name`,
    `river_name`,
    CONCAT(LOWER(`peak_name`),
            LOWER(SUBSTRING(`river_name`, 2))) AS 'mix'
FROM
    `peaks`,
    `rivers`
WHERE
    RIGHT(LOWER(`peak_name`), 1) = LEFT(LOWER(`river_name`), 1)
ORDER BY `mix`;
 