/* Creating views for tables TA, OnlineCourse, InPersonCourse */

/* Drop VIEWs - make sure we start clean */

DROP VIEW IF EXISTS TAView;
DROP VIEW IF EXISTS OnlineCourseView;
DROP VIEW IF EXISTS InPersonCourseView;
DROP VIEW IF EXISTS Student_Grade_A;
DROP VIEW IF EXISTS TA_Course;

/* Create view for TAs */

CREATE VIEW TAView As
Select S.SSN, S.StudentName, S.Address, S.Email, T.Salary
From   Student as S, TA as T
Where  S.SSN=T.SSN;

SELECT * FROM TAView; -- "Print" items in TAView

/* Create view for OnlineCourses */

CREATE VIEW OnlineCourseView As
Select  C.CourseNo, C.CourseName, C.InstructorID, C.NoOfStudents, C.TASSN, W.URL
From    Course as C, OnlineCourse as W
Where   C.CourseNo = W.CourseNo;

SELECT * FROM OnlineCourseView; -- "Print" items in OnlineCourseView

/* Create view for InPersonCourses */

CREATE VIEW InPersonCourseView As
Select  C.CourseNo, C.CourseName, C.InstructorID, C.NoOfStudents, C.TASSN, T.ClassTime, T.RoomNo, T.Building
From    Course as C, InPersonCourse as T
Where   C.CourseNo = T.CourseNo;

SELECT * FROM InPersonCourseView; -- "Print" items in InPersonCourseView

/*
 Create view : TA_Course
 Attributes of the view : TA name, TA email, Course name
 ----------------------------------------------------------
 A view constructed by a list of students’ names and email
 addresses who are teaching assistants. Also get the course
 names for which they are teaching assistants.
 ----------------------------------------------------------
 CREATE VIEW
 -- TA_Course is the name of the view we are creating
 SELECT
 -- Select the attributes we want to show in the view
        (TA name, TA email, Course name)
 FROM
 -- From the tables we want to use to create the view
        (Student, TA, Course, Enrolled)
 -- The Student table is used to get the TA name and email address
        (SSN is a foreign key in the TA table)
 -- The TA table is used to get the TA name and email address
        (SSN is a foreign key in the Student table)
 -- The Course table is used to get the course name
        (CourseNo is a foreign key in the Enrolled table)
 -- The Enrolled table is used to get the course name
        (CourseNo is a foreign key in the Course table)
 WHERE
 Join the tables together using the foreign keys (SSN, CourseNo)
 -- S.SSN=T.SSN : The TA name and email address is in the Student table and the TA table
        (SSN is a foreign key in the TA table and the Student table)
 -- S.SSN=E.SSN : The TA name and email address is in the Student table and the Enrolled table
        (SSN is a foreign key in the Enrolled table and the Student table)
 -- C.CourseNo=E.CourseNo : The course name is in the Course table and the Enrolled table
        (CourseNo is a foreign key in the Enrolled table and the Course table)
 ----------------------------------------------------------
*/

CREATE VIEW TA_Course As
Select S.StudentName, S.Email, T.Salary
From   Student as S, TA as T, Course as C, Enrolled as E
Where  S.SSN=T.SSN AND S.SSN=E.SSN AND C.CourseNo=E.CourseNo;

SELECT * FROM TA_Course; -- "Print" items in TA_Course

/*
 Name of view: Student_Grade_A
 Attributes of the view: student ssn, number of A’s gotten
 ----------------------------------------------------------
 A view constructed by a list of students who got at least
 2 “A” in their course.
 ----------------------------------------------------------
 CREATE VIEW
 -- Student_Grade_A is the name of the view we are creating
 SELECT
 -- Select the attributes we want to show in the view
        (student ssn, number of A’s gotten)
 FROM
 -- From the tables we want to use to create the view
        (Student, Enrolled)
 -- The Student table is used to get the student ssn (SSN)
 -- The Enrolled table is used to get the number of A’s gotten (GRADE)
 WHERE
 -- S.SSN=E.SSN : The student ssn is in the Student table and the Enrolled table
        (SSN is a foreign key in the Enrolled table and the Student table)
 -- E.GRADE='A' : The number of A’s gotten is in the Enrolled table and the Enrolled table
        (GRADE is a foreign key in the Enrolled table and the Student table)
 GROUP BY
 -- Group the items by the student ssn
        (SSN)
 -- The student ssn is in the Student table and the Enrolled table
        (SSN is a foreign key in the Enrolled table and the Student table)
 HAVING
 -- The number of A’s gotten is greater than or equal to 2
        (COUNT(E.GRADE)>=2)
 ----------------------------------------------------------
*/

CREATE VIEW Student_Grade_A As
Select S.SSN, COUNT(E.GRADE) AS A_Count
From   Student as S, Enrolled as E
Where  S.SSN=E.SSN AND E.GRADE='A'
Group By S.SSN
Having COUNT(E.GRADE)>=2;

SELECT * FROM Student_Grade_A; -- "Print" items in Student_Grade_A
