#Exercise 1:
CREATE DATABASE IF NOT EXISTS fresher_training_Management;
USE fresher_training_Management;
CREATE TABLE Trainee ( 
	TraineeID 			INT  AUTO_INCREMENT PRIMARY KEY , 
	Full_Name 			VARCHAR(45), 
	Birth_Date 			DATE, 
	GENDER 				BIT DEFAULT NULL,-- 0 = Male, 1 = Female, 
	ET_IQ 				INT CHECK( ET_IQ BETWEEN 0 AND 20), 
	ET_Gmath 			INT CHECK( ET_IQ BETWEEN 0 AND 20), 
	ET_English 			INT CHECK( ET_IQ BETWEEN 0 AND 50) , 
	Training_Class 		VARCHAR(5), 
	Evaluation_Notes 	text
);
ALTER TABLE trainee ADD  VTI_Account VARCHAR(50) NOT NULL UNIQUE; 

#Exercise 2: Data Types
CREATE TABLE datatype2 (
	ID 				MEDIUMINT AUTO_INCREMENT PRIMARY KEY, 
	Name 			NVARCHAR(30), 
	Code 			CHAR(5), 
	ModifiedDate 	DATETIME
);

#Exercise 3: Data Types
CREATE TABLE datatype3 ( 
	ID 				MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
	Name 			NVARCHAR(50), 
	BirthDate 		DATE, 
	Gender 			BIT DEFAULT NULL,-- 0 = Male, 1 = Female, 
	IsDeletedFlag 	BIT -- 0 = active, 1 = deleted
); 
							