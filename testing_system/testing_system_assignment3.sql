use Testing;
use Testing1;
-- insert into ExamQuestion(ExamID,QuestionID)
-- 	values	(6,15),
-- 			(7,14),
--             (8,13),
--             (9,12),
--             (10,11),
--             (11,10),
--             (12,9),
--             (13,8),
--             (14,7),
--             (15,6);
            
#Exercise 2
-- select * from Department;

#Exercise4
select *
	from Account 
order by 
     char_length(FullName) desc limit 1;


#Exercise 5
use testing1;
use Testing1;
show tables;
desc Account;
select *from Account;
    
select *
	from Account 
where
	DepartmentID = 3
order by 
     char_length(FullName) desc limit 1;   
     
#Exercise3
select DepartmentID from Department where DepartmentName = 'Sales';

#Exercise6
select *from Groups;
-- select GroupName from Groups where CreateDate <= '2019-12-20';
insert into Groups(GroupID,GroupName,CreatorID,CreateDate) 
	value	(6,'BrSE','111','2020-01-01'),
			(7,'PM','114','2019-12-21)'),
            (8,'HelpDesk','112','2020-01-01'),
            (9,'Cloud','113','2020-01-01'),
            (10,'AWS','114','2020-01-01');

select *from Groups;
select GroupName from Groups where CreateDate <= '2019-12-20';

#Exercise7
insert into Answer(AnswerID,Content,QuestionID,isCorrect)
	value	(7,'cautraloinaydungkhong',1,'yes'),
			(8,'cautrailoi',2,'no');
select *from Answer;
insert into Answer(AnswerID,Content,QuestionID,isCorrect)
	value	(9,'cautraloinaydungnhi',1,'yes'),
			(10,'anwser',1,'no'),
            (11,'aq',1,'yes');
select *from Answer;

SELECT 	QuestionID,count(QuestionID) 
  FROM Answer
 GROUP by QuestionID order by count(QuestionID) desc limit 1;
 
#Exercise8
create table Exam(
	ExamID				int(10) 	auto_increment	primary key,
    Code				char(10),
    Title				char(20),
	CategoryID			int(10),
    Duration			time,
    CreatorID			int(10),
    CreateDate			date
);

insert into Exam(ExamID,Code,Title,CategoryID,Duration,CreatorID,CreateDate)
	values	(1,'AB1','Exam1',1,'30:00:00','2','2016-08-08'),
			(2,'AB2','Exam2',3,'45:00:00','2','2016-08-08'),
            (3,'AB3','Exam3',2,'75:00:00','2','2016-08-08'),
            (4,'AB4','Exam4',5,'60:00:00','2','2016-08-08'),
            (5,'AB5','Exam5',4,'65:00:00','2','2016-08-08');

select Code from Exam where Duration >= 60 and CreateDate <= '2019-12-20';

#Exercise 14
UPDATE Account
SET FullName = 'Nguyen Ba Loc', Email = 'loc.nguyenba@vti.com.vn' 
WHERE AccountID = 5;

#Exercise 
select * from Account join Department on Account.DepartmentID = Department.DepartmentID;

#Exercise 9: Lay 5 group tao gan day nhat
select * from Groups order by CreateDate desc limit 5;

#Exercise10: Dem so nv thuoc Department co id =2
select * from Department;
select count(DepartmentName) from Department where DepartmentID =2;

#Exercise11: Lay ra nv co ten bat dau bang chu 'D' va ket thuc bang chu 'o'
select * from Account;
insert into Account(AccountID, Email, UserName, FullName, DepartmentID,PositionID,CreateDate) 
	values 	(9,'a1@gmail.com','a12','Duong Van Nho',1,5,'2019-09-08'),
			(10,'lea@gmail.com','le12','Duong Thi Hao',2,7,'2016-09-01');
select * from Account where FullName like "D%o";

#Exercise 12: xoa tat ca cac exam tao truoc ngay 20/12/2019
SET SQL_SAFE_UPDATES=0;
delete from Exam where CreateDate <= '2019-12-20';

#Exercise15: update account co id =5 se thuoc group co id=4;
update  GroupAccount set GroupID =4 where AccountID =5; 

#Exercise 13: Xoa tat ca cac question co noi dung bat dau bang tu 'cau hoi'
delete from Question where Content = 'cau hoi%';






