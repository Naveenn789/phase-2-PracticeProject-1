create database PracticeProject1

use PracticeProject1

create table Subjects 
(
 subjectId int primary key identity(1, 1),
 subjectName nvarchar(50),
 TeacherName nvarchar(50)
)

create table Classes 
(
 ClassId int primary key identity(1, 1),
 ClassName nvarchar(50),
 ClassFloor int
)

create table Student
(
 RollNo int primary key identity(1, 1),
 studentName nvarchar(50),
 classId int foreign key references Classes(ClassId),
 subjectId int foreign key references Subjects(subjectId)
)

insert into Subjects (subjectName, TeacherName) values
('English', 'Amarnadh'),('Telugu', 'Mohamad'),('Hindi', 'Arar'),('Mathematics', 'Basha'),('Social 
Science', 'Tirumalaih'),('Science', 'Rafi')

insert into Classes (ClassName, ClassFloor) values
('Class 1', 0),('Class 2', 0),('Class 3', 1),('Class 4', 1),('Class 5', 2),('Class 6', 2),('Class 7', 2),('Class 
8', 3)

insert into Student (studentName, classId, subjectId) values
('Aziz', 1, 5),('Balveer', 1, 4),('Ranvijay', 2, 3),('Zoya', 8, 1),('Abhishek', 7, 5),('Geethanjali', 5,
3),('Sacsena', 6, 4),('Usha', 7, 2)


select * from Student

select * from Classes

select * from Subjects