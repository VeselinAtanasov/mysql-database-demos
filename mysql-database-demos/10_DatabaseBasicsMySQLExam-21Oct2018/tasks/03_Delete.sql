
DELETE FROM colonists
  WHERE id NOT IN (
    SELECT tc.colonist_id FROM travel_cards tc
  );
  
DELETE c,t  FROM `colonists` AS c 
LEFT JOIN `travel_cards` AS t 
ON c.id = t.colonist_id
WHERE t.colonist_id IS NULL