SELECT 
    `Product ID`,
    ROUND(AVG(ABS(`Units Sold` - `Demand Forecast`) / NULLIF(`Units Sold`, 0)) * 100, 2) AS `MAPE (%)`
FROM 
    inventory_forecasting
WHERE 
    `Units Sold` > 0
GROUP BY 
    `Product ID`;
