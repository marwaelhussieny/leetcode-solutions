SELECT A1.MACHINE_ID,ROUND(AVG(A2.timestamp - a1.timestamp), 3) AS processing_time
FROM ACTIVITY A1
JOIN ACTIVITY A2 ON 
A1.machine_id = A2.machine_id
AND A1.process_id = A2.process_id 
AND A1.activity_type ='START'
AND A2.ACTIVITY_TYPE='END'
GROUP BY a1.machine_id