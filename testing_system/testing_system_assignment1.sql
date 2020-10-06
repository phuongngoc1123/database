-- create database if not exists Testing;
-- use Testing;

-- create table Department(
-- 	DepartmentID 		int(10) 	auto_increment primary key,
--     DepartmentName		char(50)
-- );

-- create table Position (
-- 	PositionID			int(10)		auto_increment	primary key,
--     PositionName		char(20)
-- );

create table Account(
	AccountID			int(10)		auto_increment 	primary key,
    Email				char(30),
    UserName			char(10),
    FullName			char(50),
    DepartmentID		int(10),
    PositionID			int(10),
    CreateDate			date
);

create table Groups(
	GroupID				int(10)		auto_increment	primary key,
    GroupName			char(30),
    CreatorID			int(10),
    CreateDate			date
);

create table GroupAccount(
	GroupID				int(10)		primary key,
    AccountID			int(10),
    JoinDate			date
);

create table TypeQuestion(
	TypeID				int(10)		auto_increment primary key,
    TypeName			char(10)
);

create table CategoryQuestion(
	CategoryID			int(10)		auto_increment	primary key,
    CategoryName		char(20)
);

create table Question(
	QuestionID 			int(10)		auto_increment	primary key,
    Content				char(100),
    CategoryID			int(10),
    TypeID				int(10),
    CreatorID			int(10),
    CreateDate			date
);

create table Answer(
	AnswerID			int(10)		auto_increment	primary key,
    Content				char(100),
    QuestionID			int(10),
    isCorrect			char(10)
);

create table Exam(
	ExamID				int(10) 	auto_increment	primary key,
    Code				char(10),
    Title				char(20),
	CategoryID			int(10),
    Duration			datetime,
    CreatorID			int(10),
    CreateDate			date
);

create table ExamQuestion(
	ExamID				int(10)		primary key,
    QuestionID			int(10)
);