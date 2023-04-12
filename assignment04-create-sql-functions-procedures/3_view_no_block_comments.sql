DROP VIEW IF EXISTS TAView;
DROP VIEW IF EXISTS OnlineCourseView;
DROP VIEW IF EXISTS InPersonCourseView;
DROP VIEW IF EXISTS Student_Grade_A;
DROP VIEW IF EXISTS TA_Course;

CREATE VIEW TAView As
Select S.SSN, S.StudentName, S.Address, S.Email, T.Salary
From   Student as S, TA as T
Where  S.SSN=T.SSN;

SELECT * FROM TAView; -- "Print" items in TAView

CREATE VIEW OnlineCourseView As
Select  C.CourseNo, C.CourseName, C.InstructorID, C.NoOfStudents, C.TASSN, W.URL
From    Course as C, OnlineCourse as W
Where   C.CourseNo = W.CourseNo;

SELECT * FROM OnlineCourseView; -- "Print" items in OnlineCourseView

CREATE VIEW InPersonCourseView As
Select  C.CourseNo, C.CourseName, C.InstructorID, C.NoOfStudents, C.TASSN, T.ClassTime, T.RoomNo, T.Building
From    Course as C, InPersonCourse as T
Where   C.CourseNo = T.CourseNo;

SELECT * FROM InPersonCourseView; -- "Print" items in InPersonCourseView

CREATE VIEW TA_Course As
Select S.StudentName, S.Email, T.Salary
From   Student as S, TA as T, Course as C, Enrolled as E
Where  S.SSN=T.SSN AND S.SSN=E.SSN AND C.CourseNo=E.CourseNo;

SELECT * FROM TA_Course; -- "Print" items in TA_Course

CREATE VIEW Student_Grade_A As
Select S.SSN, COUNT(E.GRADE) AS A_Count
From   Student as S, Enrolled as E
Where  S.SSN=E.SSN AND E.GRADE='A'
Group By S.SSN
Having COUNT(E.GRADE)>=2;

SELECT * FROM Student_Grade_A; -- "Print" items in Student_Grade_A
