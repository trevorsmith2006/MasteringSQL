--Get the last name, first name, Class Name and weighted grade (weight*grade) of each student 
SELECT s.LastName,s.FirstName,c.ClassName,se.Grade*c.Weight AS WeightedGrade
FROM StudentEnrollments se
INNER JOIN Students s ON se.StudentId = s.StudentId
INNER JOIN Classrooms c ON se.ClassroomId = c.ClassroomId