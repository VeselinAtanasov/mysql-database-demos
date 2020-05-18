SELECT job_name FROM (
		SELECT t.`job_during_journey` AS job_name, COUNT(t.`job_during_journey`) AS count
		FROM `colonists` AS C
		JOIN `travel_cards` AS t
		ON t.`colonist_id` = c.`id`
		JOIN `journeys` AS j
		ON t.`journey_id` = j.`id`
		WHERE j.journey_end-j.journey_start = (SELECT MAX(journey_end-journey_start) FROM `journeys`)
		GROUP BY t.`job_during_journey`
		ORDER BY count ASC
		LIMIT 1) AS a
