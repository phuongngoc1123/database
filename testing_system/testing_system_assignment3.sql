use Testing;
use Testing1;
insert into ExamQuestion(ExamID,QuestionID)
	values	(6,15),
			(7,14),
            (8,13),
            (9,12),
            (10,11),
            (11,10),
            (12,9),
            (13,8),
            (14,7),
            (15,6);
            
#Exercise 2
select * from Department;

#Exercise3
select Department.DepartmentID from Department where Department.DepartmentName = 'Sales';

#Exercise 4
select * from Account order by length(Account.FullName) DESC;