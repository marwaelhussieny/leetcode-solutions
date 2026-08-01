SELECT P.product_id, ROUND(ISNULL(SUM(S.units * P.price) * 1.0 / SUM(S.units), 0), 2) AS average_price 
FROM PRICES P
LEFT JOIN UnitsSold S ON P.product_id = S.product_id
AND S.purchase_date BETWEEN P.START_DATE AND P.END_DATE
GROUP BY P.PRODUCT_ID