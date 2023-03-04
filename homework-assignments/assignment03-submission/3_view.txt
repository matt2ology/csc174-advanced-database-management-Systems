/* Creating views for tables TA, OnlineCourse, InPersonCourse */

/* Create view for TAs */

CREATE VIEW TAView As 
Select S.SSN, S.StudentName, S.Address, S.Email, T.Salary   
From   Student as S, TA as T  
Where  S.SSN=T.SSN;

/* "Print" items in TAView */

SELECT * FROM TAView;

/* Create view for OnlineCourses */
 
CREATE VIEW OnlineCourseView As 
Select  C.CourseNo, C.CourseName, C.InstructorID, C.NoOfStudents, C.TASSN, W.URL 
From    Course as C, OnlineCourse as W 
Where   C.CourseNo = W.CourseNo; 
 
/* "Print" items in OnlineCourseView */

SELECT * FROM OnlineCourseView;

/* Create view for InPersonCourses */
 
CREATE VIEW InPersonCourseView As 
Select  C.CourseNo, C.CourseName, C.InstructorID, C.NoOfStudents, C.TASSN, T.ClassTime, T.RoomNo, T.Building
From    Course as C, InPersonCourse as T 
Where   C.CourseNo = T.CourseNo; 

/* "Print" items in InPersonCourseView */

SELECT * FROM InPersonCourseView;