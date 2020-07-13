--Get the Average grade of each student for the Running and Acting classes. Show FirstName, LastName, and Average Grade of the 2 classes
SELECT s.FirstName,s.LastName,AVG(se.Grade) AS RunningActingGrade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
INNER JOIN Classrooms c ON se.ClassroomId = c.ClassroomId
WHERE c.ClassName='Running' OR c.ClassName='Acting'
GROUP BY se.StudentId