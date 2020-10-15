#Exercise1
#question1: tao view co chua danh sach nhan vien thuoc phong ban sale
use Testing1;
select * from NV_Sale1;
select * from Department;
create View NV_SALE as
	select Account.*, Position.PositionName, Department.DepartmentName from Account
    inner join Position on Account.PositionID = Position.PositionID
    inner join Department on Account.DepartmentID = Department.DepartmentID
    where Department.DepartmentName = 'Sales';
    
#question2: Tao view chua thong tin cac account tham gia nhieu group nhat
create View Max_group_account AS
	select Account.*,count(GroupAccount.AccountID) AS Group_join from Account
	inner join GroupAccount ON Account.AccountID = GroupAccount.AccountID 
		group by Account.AccountID 
        having Group_join = Max(Group_join);

#Question3: Tao view chua content qua dai va xoa no di
create View Long_Content as
	select *from Question
	where char_length(content)>300;
drop View Long_Content;

#Question4: Tao view chua danh sach phong ban co nhieu nv nhat
create View Max_Member as
select Department.DepartmentName, count(Account.AccountID) from Department
	inner join Account on Department.DepartmentID = Account.DepartmentID
    group by Department.DepartmentName
    order by count(Account.AccountID) desc limit 1;
    
#Question5: Tao view chua tat ca cau hoi do ho Nguyen tao
create View Question_by_Nguyen as
select Question.* from Question 
	inner join Account on Question.CreatorID =Account.AccountID 
		where Account.FullName like 'Nguyen%';

