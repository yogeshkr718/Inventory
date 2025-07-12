SELECT 
    `Product ID`,
    SUM(`Units Sold`) AS `Total Units Sold`,
    CASE 
        WHEN SUM(`Units Sold`) >= 100 THEN 'Fast Moving'
        WHEN SUM(`Units Sold`) BETWEEN 30 AND 99 THEN 'Moderate'
        ELSE 'Slow Moving'
    END AS `Movement Category`
FROM 
    inventory_forecasting
GROUP BY 
    `Product ID`;
