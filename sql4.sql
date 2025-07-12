SELECT 
    `Store ID`,
    `Product ID`,
    COUNT(*) AS `Days with No Sales`
FROM 
    inventory_forecasting
WHERE 
    `Units Sold` = 0
GROUP BY 
    `Store ID`, `Product ID`
HAVING 
    `Days with No Sales` >= 10;
