/* Create tables for Student, TA, Course, Enrolled, Instructor, Classroom, OnlineCourse, InPersonCourse */

/* Student */

CREATE TABLE Student
(SSN CHAR(9),
StudentName VARCHAR(30),
Address VARCHAR(30),
Email VARCHAR(30),
PRIMARY KEY (SSN));

/* TA */

CREATE TABLE TA
(SSN CHAR(9),
Salary INTEGER,
FOREIGN KEY (SSN) REFERENCES Student(SSN));

/* Course */

CREATE TABLE Course
(CourseNo VARCHAR(7),
CourseName VARCHAR(20),
NoOfStudents INTEGER,
InstructorID VARCHAR(10),
TASSN CHAR(9),
PRIMARY KEY (CourseNo),
FOREIGN KEY (TASSN) REFERENCES TA(SSN));

/* Enrolled */

CREATE TABLE Enrolled
(SSN CHAR(9),
CourseNo VARCHAR(7),
GRADE CHAR(1),
PRIMARY KEY (SSN, CourseNo),
FOREIGN KEY (CourseNo) REFERENCES Course(CourseNo));

/* Instructor */

CREATE TABLE Instructor
(Title VARCHAR(20),
InstructorID VARCHAR(10),
InstructorName VARCHAR(20),
PRIMARY KEY (InstructorID));

/* Classroom */

CREATE TABLE Classroom
(RoomNo INTEGER,
Building VARCHAR(10),
Capacity INTEGER,
PRIMARY KEY (RoomNo, Building));

/* OnlineCourse */

CREATE TABLE OnlineCourse
(CourseNo VARCHAR(7),
URL VARCHAR(50),
FOREIGN KEY (CourseNo) REFERENCES Course(CourseNo));

/* InPersonCourse */

CREATE TABLE InPersonCourse
(CourseNo VARCHAR(7) REFERENCES Course(CourseNo),
RoomNo INTEGER,
Building VARCHAR(10),
ClassTime VARCHAR(7) NOT NULL,
FOREIGN KEY (RoomNo, Building) REFERENCES Classroom(RoomNo, Building));