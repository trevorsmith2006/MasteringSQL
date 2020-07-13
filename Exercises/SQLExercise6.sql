--Get the average score for each class (show the class name and average score)
SELECT c.ClassName,AVG(se.Grade) AS AverageGrade
FROM StudentEnrollments se
INNER JOIN Classrooms c ON se.ClassroomId = c.ClassroomId
GROUP BY se.ClassroomId