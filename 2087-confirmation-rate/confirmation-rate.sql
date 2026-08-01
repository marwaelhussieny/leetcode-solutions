SELECT S.user_id,ROUND(AVG(CASE WHEN C.action = 'confirmed' THEN 1.0 ELSE 0.0 END), 2) AS confirmation_rate
FROM SIGNUPS S
LEFT JOIN Confirmations C ON S.USER_ID=C.USER_ID
GROUP BY S.user_id