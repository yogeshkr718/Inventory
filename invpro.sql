SELECT 
    `Store ID`,
    COUNT(DISTINCT `Product ID`) AS `SKU Count`,
    ROUND(AVG(`Inventory Level`), 2) AS `Avg Inventory`,
    ROUND(SUM(CASE WHEN `Inventory Level` = 0 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS `Stockout Rate (%)`,
    ROUND(AVG(`Discount`), 2) AS `Avg Discount (%)`
FROM 
    inventory_forecasting
GROUP BY 
    `Store ID`;

