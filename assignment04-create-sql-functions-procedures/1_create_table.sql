/* Create tables for Student, TA, Course, Enrolled, Instructor, Classroom, OnlineCourse, InPersonCourse */

/* Check that we are starting from an Empty Set - No previous tables*/

SHOW TABLES; -- Expect 0 tables in the database (Empty Set)

/* Student Table
 Having CONSTRAINT StudentPK before PRIMARY KEY (SSN) is optional,
 but recommended for readability purposes
 (see https://dev.mysql.com/doc/refman/8.0/en/create-table.html)
*/

CREATE TABLE Student
(SSN CHAR(9),
StudentName VARCHAR(30),
Address VARCHAR(30),
Email VARCHAR(30),
PRIMARY KEY (SSN));

/* TA Table */

CREATE TABLE TA
(SSN CHAR(9),
Salary INTEGER,
FOREIGN KEY (SSN) REFERENCES Student(SSN));

/* Course Table */

CREATE TABLE Course
(CourseNo VARCHAR(7),
CourseName VARCHAR(30),
NoOfStudents INTEGER,
InstructorID VARCHAR(10),
TASSN CHAR(9),
PRIMARY KEY (CourseNo),
FOREIGN KEY (TASSN) REFERENCES TA(SSN));

/* Enrolled Table */

CREATE TABLE Enrolled
(SSN CHAR(9),
CourseNo VARCHAR(7),
GRADE CHAR(1),
PRIMARY KEY (SSN, CourseNo),
FOREIGN KEY (CourseNo) REFERENCES Course(CourseNo));

/* Instructor Table */

CREATE TABLE Instructor
(Title VARCHAR(20),
InstructorID VARCHAR(10),
InstructorName VARCHAR(20),
PRIMARY KEY (InstructorID));

/* Classroom Table */

CREATE TABLE Classroom
(RoomNo INTEGER,
Building VARCHAR(10),
Capacity INTEGER,
PRIMARY KEY (RoomNo, Building));

/* OnlineCourse Table */

CREATE TABLE OnlineCourse
(CourseNo VARCHAR(7),
URL VARCHAR(50),
FOREIGN KEY (CourseNo) REFERENCES Course(CourseNo));

/* InPersonCourse Table */

CREATE TABLE InPersonCourse
(CourseNo VARCHAR(7) REFERENCES Course(CourseNo),
RoomNo INTEGER,
Building VARCHAR(10),
ClassTime VARCHAR(8) NOT NULL,
FOREIGN KEY (RoomNo, Building) REFERENCES Classroom(RoomNo, Building));

/* Check that tables were created */

SHOW TABLES; -- Expect 8 tables in total in the database

DESC Student
DESC TA
DESC Course
DESC Enrolled
DESC Instructor
DESC Classroom
DESC OnlineCourse
DESC InPersonCourse
