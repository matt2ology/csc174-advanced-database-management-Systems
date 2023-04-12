/*
 Matthew Mendoza
 CSC 174 - Advanced Database Management Systems - Assignment 4
 Section 06 : Drop All
 Professor : Ying Jin
 Created : 2023-03-27
 Updated : 2023-03-27
 ------------------------------------------------------------------------------
 Specify the statements to drop all the tables, views, functions, and procedures.
 Pay attention to the order of the drop statements in order to drop everything successfully.
 ------------------------------------------------------------------------------
*/

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