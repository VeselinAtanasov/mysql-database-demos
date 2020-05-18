
SELECT SUM(w.deposit_amount - s.deposit_amount) AS sum_difference
FROM wizzard_deposits w
INNER JOIN wizzard_deposits s
ON w.id + 1 = s.id;
 

