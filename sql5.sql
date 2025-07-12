SELECT 
    `Store ID`,
    `Product ID`,
    SUM(`Inventory Level`) AS `Total Stock Level`
FROM 
    inventory_forecasting
GROUP BY 
    `Store ID`, `Product ID`;



