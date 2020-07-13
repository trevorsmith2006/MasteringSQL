--What is the final grade of Donald Duck?
--Final grade is defined as the sum of all weighted grades
SELECT s.FirstName,s.LastName,SUM(se.Grade*c.Weight) AS FinalGrade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
INNER JOIN Classrooms c ON se.ClassroomId = c.ClassroomId
WHERE s.FirstName='Donald' AND s.LastName='Duck'