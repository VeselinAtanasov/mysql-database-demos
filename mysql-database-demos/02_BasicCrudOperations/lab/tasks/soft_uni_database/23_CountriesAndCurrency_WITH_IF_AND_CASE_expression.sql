SELECT `country_name`,`country_code`,
    CASE
        WHEN `currency_code` = 'EUR' THEN 'Euro' 
		WHEN `currency_code` != 'EUR' THEN 'Not Euro'
        -- ELSE 'Not Euro'
    END AS `currency_code`
FROM `countries`
ORDER BY `country_name` ASC;

# Second Solutuon
SELECT `country_name`,`country_code`,
 IF(`currency_code` = 'EUR', 'Euro', 'Not Euro') AS `currency_code`
FROM `countries`
ORDER BY `country_name` ASC;