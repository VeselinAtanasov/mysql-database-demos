SELECT COUNT(`name`)
FROM `products`
WHERE `category_id` = 2 AND `price` > 8;

-- ===

SELECT COUNT(`name`)
FROM `products`
WHERE `price` > 8
GROUP BY  `category_id`
HAVING  `category_id` = 2;