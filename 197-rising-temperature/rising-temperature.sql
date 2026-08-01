SELECT W1.ID
FROM WEATHER W2
INNER JOIN WEATHER W1
    ON DATEDIFF(DAY, W2.recordDate, W1.recordDate) = 1
WHERE W1.temperature > W2.temperature;