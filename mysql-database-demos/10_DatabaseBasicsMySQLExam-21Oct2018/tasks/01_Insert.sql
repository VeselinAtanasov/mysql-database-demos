insert into travel_cards (card_number, job_during_journey, colonist_id, journey_id) values
(
(SELECT 
       (CASE
			WHEN `birth_date` > '1980-01-01' THEN CONCAT(YEAR(`birth_date`),DAY(`birth_date`), LEFT(`ucn`,4))
            ELSE CONCAT(YEAR(`birth_date`),MONTH(`birth_date`), RIGHT(`ucn`,4))
       END) AS new_card_number
FROM `colonists` 
WHERE `id` =96),
 (SELECT 
       (CASE
			WHEN `id` % 2 = 0 THEN 'Pilot'
			WHEN `id` % 3 = 0 THEN 'Cook'
            ELSE 'Engineer'
       END) AS job
FROM `colonists` 
WHERE `id` = 96), 
96, 
(SELECT LEFT(`ucn`,1) FROM `colonists` WHERE `id` = 96)),

(
(SELECT 
       (CASE
			WHEN `birth_date` > '1980-01-01' THEN CONCAT(YEAR(`birth_date`),DAY(`birth_date`), LEFT(`ucn`,4))
            ELSE CONCAT(YEAR(`birth_date`),MONTH(`birth_date`), RIGHT(`ucn`,4))
       END) AS new_card_number
FROM `colonists` 
WHERE `id` =97),
 (SELECT 
       (CASE
			WHEN `id` % 2 = 0 THEN 'Pilot'
			WHEN `id` % 3 = 0 THEN 'Cook'
            ELSE 'Engineer'
       END) AS job
FROM `colonists` 
WHERE `id` = 97), 
97, 
(SELECT LEFT(`ucn`,1) FROM `colonists` WHERE `id` = 97)),

(
(SELECT 
       (CASE
			WHEN `birth_date` > '1980-01-01' THEN CONCAT(YEAR(`birth_date`),DAY(`birth_date`), LEFT(`ucn`,4))
            ELSE CONCAT(YEAR(`birth_date`),MONTH(`birth_date`), RIGHT(`ucn`,4))
       END) AS new_card_number
FROM `colonists` 
WHERE `id` =98),
 (SELECT 
       (CASE
			WHEN `id` % 2 = 0 THEN 'Pilot'
			WHEN `id` % 3 = 0 THEN 'Cook'
            ELSE 'Engineer'
       END) AS job
FROM `colonists` 
WHERE `id` = 98), 
98, 
(SELECT LEFT(`ucn`,1) FROM `colonists` WHERE `id` = 98)),

(
(SELECT 
       (CASE
			WHEN `birth_date` > '1980-01-01' THEN CONCAT(YEAR(`birth_date`),DAY(`birth_date`), LEFT(`ucn`,4))
            ELSE CONCAT(YEAR(`birth_date`),MONTH(`birth_date`), RIGHT(`ucn`,4))
       END) AS new_card_number
FROM `colonists` 
WHERE `id` =99),
 (SELECT 
       (CASE
			WHEN `id` % 2 = 0 THEN 'Pilot'
			WHEN `id` % 3 = 0 THEN 'Cook'
            ELSE 'Engineer'
       END) AS job
FROM `colonists` 
WHERE `id` = 99), 
99, 
(SELECT LEFT(`ucn`,1) FROM `colonists` WHERE `id` = 99)),

(
(SELECT 
       (CASE
			WHEN `birth_date` > '1980-01-01' THEN CONCAT(YEAR(`birth_date`),DAY(`birth_date`), LEFT(`ucn`,4))
            ELSE CONCAT(YEAR(`birth_date`),MONTH(`birth_date`), RIGHT(`ucn`,4))
       END) AS new_card_number
FROM `colonists` 
WHERE `id` =100),
 (SELECT 
       (CASE
			WHEN `id` % 2 = 0 THEN 'Pilot'
			WHEN `id` % 3 = 0 THEN 'Cook'
            ELSE 'Engineer'
       END) AS job
FROM `colonists` 
WHERE `id` = 100), 
100, 
(SELECT LEFT(`ucn`,1) FROM `colonists` WHERE `id` = 100));