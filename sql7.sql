SELECT 
    `Store ID`,
    `Product ID`,
    SUM(`Units Sold`) / NULLIF(AVG(`Inventory Level`), 0) AS `Inventory Turnover Ratio`
FROM 
    inventory_forecasting
GROUP BY 
    `Store ID`, `Product ID`;
