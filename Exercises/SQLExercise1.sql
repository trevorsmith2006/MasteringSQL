-- Get the last name, first name, classroom id, and grades of the students 
SELECT s.LastName,s.FirstName,se.ClassroomId,se.Grade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
ORDER BY se.StudentId 