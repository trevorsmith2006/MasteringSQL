-- Get the last name, first name, classroom name, and grades of the students 
SELECT s.LastName,s.FirstName,c.ClassName,se.Grade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
INNER JOIN Classrooms c ON se.ClassroomId = c.ClassroomId
ORDER BY se.StudentId 