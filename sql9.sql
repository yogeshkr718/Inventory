SELECT 
    `Store ID`,
    `Product ID`,
    ROUND(AVG(`Units Sold`), 2) AS `7-Day Avg Sales`,
    ROUND(AVG(`Units Sold`) * 1.5, 2) AS `Suggested Reorder Point`
FROM 
    inventory_forecasting
WHERE 
    `Date` >= CURDATE() - INTERVAL 7 DAY
GROUP BY 
    `Store ID`, `Product ID`;
