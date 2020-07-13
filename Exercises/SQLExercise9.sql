--What is the final grade of all the students? Show first and last names with final grades
SELECT s.FirstName,s.LastName,SUM(se.Grade*c.Weight) AS FinalGrade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
INNER JOIN Classrooms c ON se.ClassroomId = c.ClassroomId
GROUP BY se.StudentId