SELECT *
FROM `employees`
WHERE `salary` = (SELECT 
            max(`salary`)
        FROM
            `employees`
        -- ORDER BY `salary` DESC
        LIMIT 1)
ORDER BY `id`;