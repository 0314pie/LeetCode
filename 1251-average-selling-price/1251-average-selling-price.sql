SELECT 
    p.product_id,
    ROUND(
        CASE 
            WHEN NVL(SUM(us.units), 0) = 0 THEN 0
            ELSE NVL(SUM(us.units * p.price), 0) / NVL(SUM(us.units), 0)
        END,
        2
    ) AS average_price
FROM 
    Prices p
LEFT JOIN 
    UnitsSold us
ON 
    p.product_id = us.product_id
    AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    p.product_id;
