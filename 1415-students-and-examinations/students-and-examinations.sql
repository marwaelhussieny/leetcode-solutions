SELECT S.student_id, S.student_name, B.subject_name, COUNT(E.STUDENT_ID) AS attended_exams
FROM STUDENTS S
CROSS JOIN Subjects B
LEFT JOIN Examinations E
ON E.STUDENT_ID = S.STUDENT_ID AND E.subject_name =B.subject_name
GROUP BY S.student_id, B.subject_name, S.student_name
ORDER BY S.student_id, B.subject_name