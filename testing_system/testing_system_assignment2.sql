create database if not exists Testing1;
use Testing1;

create table Department(
	DepartmentID 		int(10) 	auto_increment primary key,
    DepartmentName		char(50)
);

insert into Department(DepartmentID,DepartmentName) values	(1,'Sales'),
															(2,'Marketing'),
                                                            (3,'IT'),
                                                            (4,'HR'),
                                                            (5,'Tai Chinh'),
                                                            (6,'Giam Doc'),
                                                            (7,'Pho Giam Doc'),
                                                            (8,'Thu Ky');

create table Position (
	PositionID			int(10)		auto_increment	primary key,
    PositionName		char(20)
);

insert into Position (PositionID,PositionName) values	(1,'Dev'),
														(2,'Tester'),
                                                        (3,'KeToan'),
                                                        (4,'BrSE'),
                                                        (5,'PM'),
                                                        (6,'BanHang'),
                                                        (7,'ThuKho');
                                                        
create table Account(
	AccountID			int(10)		auto_increment 	primary key,
    Email				char(30),
    UserName			char(10),
    FullName			char(50),
    DepartmentID		int(10),
    PositionID			int(10),
    CreateDate			date
);

insert into Account(AccountID, Email, UserName, FullName, DepartmentID,PositionID,CreateDate) 
	values 	(1,'a@gmail.com','a11','Nguyen Van A',1,6,'2015-09-08'),
			(2,'le@gmail.com','le11','Nguyen Thuy Le',5,7,'2017-09-01'),
            (3,'hanh@gmail.com','hanh1','Le Thi Hanh',3,2,'2019-11-11'),
            (4,'an@gmail.com','an1','Pham Quoc An',3,1,'2016-06-06'),
            (5,'nguyen@gmail.com','nguyen1','Duong Hai Nguyen',5,3,'2017-08-07'),
            (6,'lananh@gmail.com','lananh1','Vu Lan Anh',8,3,'2020-06-06'),
            (7,'giang@gmail.com','giang1','Vu Truong Giang',6,5,'2014-01-01'),
            (8,'haianh@gmail.com','haianh1','Pham Hai Anh',7,4,'2012-02-02');
            
create table Groups(
	GroupID				int(10)		auto_increment	primary key,
    GroupName			char(30),
    CreatorID			int(10),
    CreateDate			date
);

insert into Groups(GroupID,GroupName,CreatorID,CreateDate) 
	values	(1,'Tester',111,'2016-06-06'),
			(2,'Dev',112,'2017-07-07'),
            (3,'Accountant',113,'2018-09-08'),
            (4,'HR',114,'2018-09-01'),
            (5,'Sales',115,'2017-08-01');
            
create table GroupAccount(
	GroupID				int(10)		primary key,
    AccountID			int(10),
    JoinDate			date
);

insert into GroupAccount(GroupID,AccountID,JoinDate)
	values	(1,3,'2016-06-06'),
			(2,5,'2016-06-07'),
            (3,1,'2016-06-08'),
            (4,2,'2017-06-06'),
            (5,6,'2018-06-06');
            
create table TypeQuestion(
	TypeID				int(10)		auto_increment primary key,
    TypeName			char(10)
);

insert into TypeQuestion(TypeID,TypeName) 
	value	(1,'Essay'),
			(2,'Multi'),
            (3,'YesNo'),
            (4,'SuaLoiSai'),
            (5,'DienTu');
            
create table CategoryQuestion(
	CategoryID			int(10)		auto_increment	primary key,
    CategoryName		char(20)
);

insert into CategoryQuestion(CategoryID,CategoryName)
	values	(1,'Java'),
			(2,'Sql'),
            (3,'C'),
            (4,'PHP'),
            (5,'Ruby');
            
create table Question(
	QuestionID 			int(10)		auto_increment	primary key,
    Content				char(100),
    CategoryID			int(10),
    TypeID				int(10),
    CreatorID			int(10),
    CreateDate			date
);

insert into Question(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate)
	values	(1,'abc',1,1,1,'2016-06-06'),
			(2,'abcd123',5,2,3,'2017-08-06'),
            (3,'abc1231',4,2,4,'2016-05-03'),
            (4,'abc1112',3,3,2,'2018-03-01'),
            (5,'abc1231',2,4,5,'2019-05-11'),
            (6,'abc1123',2,5,5,'2017-06-15');
            
create table Answer(
	AnswerID			int(10)		auto_increment	primary key,
    Content				char(100),
    QuestionID			int(10),
    isCorrect			char(10)
);

insert into Answer(AnswerID,Content,QuestionID,isCorrect)
	values	(1,'abbc',5,'yes'),
			(2,'abd','4','yes'),
            (3,'bcd',3,'no'),
            (4,'abb',2,'no'),
            (5,'bbc',1,'yes'),
            (6,'aba',6,'yes');
            
create table Exam(
	ExamID				int(10) 	auto_increment	primary key,
    Code				char(10),
    Title				char(20),
	CategoryID			int(10),
    Duration			datetime,
    CreatorID			int(10),
    CreateDate			date
);

insert into Exam(ExamID,Code,Title,CategoryID,Duration,CreatorID,CreateDate)
	values	(1,'AB1','Exam1',1,'2012-01-11 13:23:44','2','2016-08-08'),
			(2,'AB2','Exam2',3,'2013-08-11 13:23:44','2','2016-08-08'),
            (3,'AB3','Exam3',2,'2014-07-11 13:23:44','2','2016-08-08'),
            (4,'AB4','Exam4',5,'2015-12-11 13:23:44','2','2016-08-08'),
            (5,'AB5','Exam5',4,'2016-10-11 13:23:44','2','2016-08-08');
            
create table ExamQuestion(
	ExamID				int(10)		primary key,
    QuestionID			int(10)
);

insert into ExamQuestion(ExamID,QuestionID)
	values	(1,3),
			(2,4),
            (3,5),
            (4,1),
            (5,2);
            
                                                        
