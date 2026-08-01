SELECT W1.ID
FROM WEATHER W2
INNER JOIN WEATHER W1
    ON W2.recordDate = DATEADD(DAY, -1, W1.recordDate)
WHERE W1.temperature > W2.temperature;