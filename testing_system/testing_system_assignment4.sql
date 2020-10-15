#Ex1: Join
#Question1: lay ra danh sach nhan vien va phong ban cua ho
select * from Account inner join Department 
	where Account.DepartmentID = Department.DepartmentID;

#Question2: lay thong tin account tao sau ngay 20/12/2010
select * from Account where CreateDate >= '2010/12/20';

#Question3: Lay ra tat ca cac Deleloper
select * from Account;
select * from Position;
select * from Account 
	inner join Position 
		where PositionName = 'Dev';

#Question4: lay ra danh sach phong ban co >3 nv
select count(Account.AccountID), Department.DepartmentName 
	from Account inner join Department on Account.DepartmentID = Department.DepartmentID 
		group by Department.DepartmentID having count(Account.AccountID) >=3;

#Question5: lay ra danh sach cau hoi duoc su dung trong de thi nhieu nhat

#Question6: Thong ke moi catrgory Question dc su dung trong bao nhieu Question
select Q.CategoryID, CQ.CategoryName, count(QuestionID)
	from Question Q inner join CategoryQuestion CQ 
		on Q.CategoryID = CQ.CategoryID
		group by Q.CategoryID;
        
#Question7: thong ke moi Question duoc su dung trong bao nhieu Exam
select *from Question;
select *from Exam;
select Q.Content, count(ExamID) from Question Q inner join ExamQuestion EQ
		on Q.QuestionID = EQ.QuestionID
            group by Q.Content;
            
#Question 8: lay question co nhieu cau tra loi nhat
select QuestionID,count(AnswerID) from Answer A 
	group by QuestionID
    order by count(AnswerID)
		desc limit 1;
        
#QUestion 9: Thong ke so luong account cua moi group
select Groups.GroupName, count(AccountID) from GroupAccount inner join Groups
	on Groups.GroupID = GroupAccount.GroupID
		group by GroupName;

#Question10: Tim chuc vu co it nguoi nhat
select PositionName, count(PositionID) from Position 
		group by PositionName
        order by count(PositionID) 
			asc limit 1;
            
#Question 11: thong ke moi phong ban co bao nhieu dev, test, scrum master, PM
select *from Position;
select A.DepartmentID, A.PositionID, P.PositionName, count(A.PositionID)
	from Account A 
    inner join Department D on D.DepartmentID = A.DepartmentID
    inner join Position P on P.PositionID = A.PositionID
		group by A.DepartmentID, A.PositionID
        order by A.DepartmentID;
        
#Question 12: lay thong tin chi tiet cua cau hoi: thong tin co ban cua question, loai cau hoi, ng tao ra cau hoi, cau tra loi,...
select *,Answer.Content, CategoryQuestion.CategoryName from Question 
	inner join Answer on Question.QuestionID=Answer.QuestionID
    inner join CategoryQuestion on Question.CategoryID = CategoryQuestion.CategoryID;

#Question13: Lay ra so luong cau hoi cua moi loai tu luan hay trac nghiem
select * from TypeQuestion;
select *from Question;
select TypeQuestion.*, count(Question.TypeID) 
	from TypeQuestion 
	join Question where Question.TypeID = TypeQuestion.TypeID
		group by Question.TypeID;
# em k lay ra theo ten tu luan hay trac nghiem duoc ma phai lay tat a

#Question14: Lay ra group khong co account nao
select Groups.GroupName, count(GroupAccount.AccountID) from Groups
	inner join GroupAccount on Groups.GroupID = GroupAccount.GroupID
    group by Groups.GroupName
    having count(GroupAccount.AccountID) = 0;
    
#Question16: LAy ra question khong co answer nao
select Question.Content, count(Answer.QuestionID) from Question
	inner join Answer on Question.QuestionID = Answer.QuestionID
    group by Question.Content
    having count(Answer.QuestionID) = 0;

#Exercise2: Union
#Question17: 
#a) lay ra account thuoc nhonm thu nhat
select * from Account where DepartmentID =1;
#b) lay ra acocunt thuoc nhom thu 2
select * from Account where DepartmentID =2;
#c) ghep 2 cau tren sao cho ket qua khong co record trung nhau
select * from Account where DepartmentID =1
	union
select * from Account where DepartmentID =2;

#Question18
#a) lay ra group lon hon 5 thanh vien
select Groups.GroupName, count(GroupAccount.AccountID) from Groups
	inner join GroupAccount on Groups.GroupID = GroupAccount.GroupID
    group by Groups.GroupName
    having count(GroupAccount.AccountID) >=5;
    
#b) Lay ra cac group nho hon 7 thanh vien
select Groups.GroupName, count(GroupAccount.AccountID) from Groups
	inner join GroupAccount on Groups.GroupID = GroupAccount.GroupID
    group by Groups.GroupName
    having count(GroupAccount.AccountID) <=7;
    
#c)ket hop 2 cai tren
select Groups.GroupName, count(GroupAccount.AccountID) from Groups
	inner join GroupAccount on Groups.GroupID = GroupAccount.GroupID
    group by Groups.GroupName
    having count(GroupAccount.AccountID) >=5
union 
select Groups.GroupName, count(GroupAccount.AccountID) from Groups
	inner join GroupAccount on Groups.GroupID = GroupAccount.GroupID
    group by Groups.GroupName
    having count(GroupAccount.AccountID) <=7;
    

            

    
		

		


