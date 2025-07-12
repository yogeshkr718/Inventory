SELECT 
    `Store ID`,
    `Product ID`,
    `Inventory Level`,
    50 AS `Reorder Point`,
    CASE 
        WHEN `Inventory Level` < 50 THEN 'Reorder Needed'
        ELSE 'Sufficient Stock'
    END AS `Status`
FROM 
    inventory_forecasting
WHERE 
    `Date` = (SELECT MAX(`Date`) FROM inventory_forecasting);



