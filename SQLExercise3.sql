--Get the first name, last name, and average of all grades for each student 
SELECT s.FirstName,s.LastName,AVG(se.Grade) AS AverageGrade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
GROUP BY se.StudentId
ORDER BY se.StudentId