SELECT 
	`product_name`,
    `order_date`,
    TIMESTAMPADD(DAY,3,`order_date`) AS 'pay_due',
    TIMESTAMPADD(MONTH,1,`order_date`) AS 'deliver_due' 
FROM `orders`;

-- second solution
SELECT `product_name`, 
	`order_date`, 
	DATE_ADD(`order_date`, INTERVAL 3 DAY) AS `pay_due`, 
	DATE_ADD(`order_date`, INTERVAL 1 MONTH) AS `delivery_due` 
FROM `orders`;