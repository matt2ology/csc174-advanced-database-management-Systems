DROP TABLE IF EXISTS Enrolled;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS OnlineCourse;
DROP TABLE IF EXISTS InPersonCourse;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS TA;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Classroom;

SHOW TABLES; -- Expect 0 tables in the database (Empty Set)

CREATE TABLE Student
(SSN CHAR(9),
StudentName VARCHAR(30),
Address VARCHAR(30),
Email VARCHAR(30),
PRIMARY KEY (SSN));

CREATE TABLE TA
(SSN CHAR(9),
Salary INTEGER,
FOREIGN KEY (SSN) REFERENCES Student(SSN));

CREATE TABLE Course
(CourseNo VARCHAR(7),
CourseName VARCHAR(30),
NoOfStudents INTEGER,
InstructorID VARCHAR(10),
TASSN CHAR(9),
PRIMARY KEY (CourseNo),
FOREIGN KEY (TASSN) REFERENCES TA(SSN));

CREATE TABLE Enrolled
(SSN CHAR(9),
CourseNo VARCHAR(7),
GRADE CHAR(1),
PRIMARY KEY (SSN, CourseNo),
FOREIGN KEY (CourseNo) REFERENCES Course(CourseNo));

CREATE TABLE Instructor
(Title VARCHAR(20),
InstructorID VARCHAR(10),
InstructorName VARCHAR(20),
PRIMARY KEY (InstructorID));

CREATE TABLE Classroom
(RoomNo INTEGER,
Building VARCHAR(10),
Capacity INTEGER,
PRIMARY KEY (RoomNo, Building));

CREATE TABLE OnlineCourse
(CourseNo VARCHAR(7),
URL VARCHAR(50),
FOREIGN KEY (CourseNo) REFERENCES Course(CourseNo));

CREATE TABLE InPersonCourse
(CourseNo VARCHAR(7) REFERENCES Course(CourseNo),
RoomNo INTEGER,
Building VARCHAR(10),
ClassTime VARCHAR(8) NOT NULL,
FOREIGN KEY (RoomNo, Building) REFERENCES Classroom(RoomNo, Building));

SHOW TABLES; -- Expect 8 tables in total in the database

DESC Student;
DESC TA;
DESC Course;
DESC Enrolled;
DESC Instructor;
DESC Classroom;
DESC OnlineCourse;
DESC InPersonCourse;
