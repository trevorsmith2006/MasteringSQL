--Which class of Mickey Mouse has the highest grade? (Give the class name)
SELECT s.FirstName,s.Lastname,c.ClassName,se.Grade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
INNER JOIN Classrooms c ON se.ClassroomId = c.ClassroomId
WHERE s.FirstName = 'Mickey' AND s.LastName='Mouse'
ORDER BY se.Grade DESC
LIMIT 1