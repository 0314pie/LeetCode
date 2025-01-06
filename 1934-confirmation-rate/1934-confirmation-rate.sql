/* Write your PL/SQL query statement below */
SELECT 
    s.user_id,
    ROUND(
        CASE 
            WHEN NVL(COUNT(c.action), 0) = 0 THEN 0
            ELSE NVL(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 0) 
                 / NVL(COUNT(c.action), 0)
        END, 
        2
    ) AS confirmation_rate
FROM 
    Signups s
LEFT JOIN 
    Confirmations c 
ON 
    s.user_id = c.user_id
GROUP BY 
    s.user_id;
