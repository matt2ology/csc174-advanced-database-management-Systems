SHOW TABLES; -- this is to show the tables before dropping them

/* Drop PROCEDUREs */

DROP PROCEDURE IF EXISTS Get_TA;
DROP PROCEDURE IF EXISTS GetStudentCourse;

/* Drop FUNCTIONs */

DROP FUNCTION IF EXISTS Course_Instructor;

/* Drop VIEWs */

DROP VIEW IF EXISTS TAView;
DROP VIEW IF EXISTS OnlineCourseView;
DROP VIEW IF EXISTS InPersonCourseView;
DROP VIEW IF EXISTS Student_Grade_A;
DROP VIEW IF EXISTS TA_Course;

/* Drop TABLEs */

DROP TABLE IF EXISTS Enrolled;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS OnlineCourse;
DROP TABLE IF EXISTS InPersonCourse;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS TA;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Classroom;

SHOW TABLES; -- this is to show the tables after dropping them