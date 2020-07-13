--What is the average score of Donald Duck?
SELECT s.FirstName,s.LastName,AVG(se.Grade) AS AverageGrade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
WHERE s.FirstName = 'Donald' AND S.LastName = 'Duck'
