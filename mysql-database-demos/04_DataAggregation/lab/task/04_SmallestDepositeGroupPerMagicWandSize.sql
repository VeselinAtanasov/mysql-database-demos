SELECT a.`deposit_group` 
FROM (
	SELECT `deposit_group`, AVG(`magic_wand_size`) AS magic_wand_size 
    FROM `wizzard_deposits` 
    GROUP BY `deposit_group`
) AS a
HAVING MIN(a.`magic_wand_size`);

-- second usage
SELECT `deposit_group`
FROM `wizzard_deposits`
GROUP BY `deposit_group`
ORDER BY AVG(`magic_wand_size`)
LIMIT 1;