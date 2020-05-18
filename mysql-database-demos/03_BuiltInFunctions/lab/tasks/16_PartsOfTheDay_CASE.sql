SELECT `name`,
CASE 
		WHEN EXTRACT(HOUR FROM start) >= 0 AND EXTRACT(HOUR FROM start) < 12
			THEN 'Morning'
		WHEN EXTRACT(HOUR FROM start) >= 12 AND EXTRACT(HOUR FROM start) < 18
			THEN 'Afternoon'
		ELSE 'Evening'
END as 'Part of the Day',
CASE
		WHEN `duration`<=3
			THEN 'Extra Short'		
		WHEN `duration` > 3 AND `duration`<=6
			THEN 'Short'	
		WHEN `duration` > 6 AND `duration`<=10
			THEN 'Long'
		ELSE 'Extra Long'
END as 'Duration'
FROM `games`