SELECT 
    `Date`,
    `Store ID`,
    `Product ID`,
    `Inventory Level`,
    `Demand Forecast`
FROM 
    inventory_forecasting
WHERE 
    `Inventory Level` = 0 AND `Demand Forecast` > 0;
