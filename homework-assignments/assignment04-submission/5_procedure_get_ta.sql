/*
 Matthew Mendoza
 CSC 174 - Advanced Database Management Systems - Assignment 4
 Section 05 : Procedure Get_TA
 Professor : Ying Jin
 Created : 2023-03-27
 Updated : 2023-03-27
*/

-- There are 2 ways to call a procedure
-- Calling a procedure - Procedure_name(InstructorID)
-- 1. CALL Procedure_name('1234567890');
-- 2. SELECT * FROM Procedure_name('1234567890');

/*
1. A stored procedure to output the names of the TAs for
    a given instructor. The instructor can teach multiple
    courses, so retrieve the TAs for all their courses.

    Name of the procedure : Get_TA
    Input parameters : InstructorID
    Output : Print TA's names (use select statement, as shown
        in the example of MySQL
-----------------------------------------------------------
logic:
1. DELIMITER $$ -- this is the delimiter for the procedure Get_TA (InstructorID)
2. CREATE PROCEDURE Get_TA(IN InstructorID VARCHAR(10))
    -- this is the input parameter for the procedure Get_TA (InstructorID)
3. BEGIN
    -- this is the beginning of the procedure Get_TA (InstructorID)
4. SELECT S.StudentName
    -- this is the output of the procedure Get_TA (InstructorID)
5. FROM Student AS S, TA AS T, Course AS C, Enrolled AS E
    -- this is the tables used in the procedure Get_TA (InstructorID)
6. WHERE S.SSN = T.SSN
    -- this is the join condition for the procedure Get_TA (InstructorID)
    (SSN is a foreign key in the TA table and the Student table)
7. AND T.SSN = E.SSN
    -- this is the join condition for the procedure Get_TA (InstructorID)
    (SSN is a foreign key in the Enrolled table and the Student table)
8. AND E.CourseNo = C.CourseNo
    -- this is the join condition for the procedure Get_TA (InstructorID)
    (CourseNo is a foreign key in the Enrolled table and the Course table)
9. AND C.InstructorID = InstructorID;
    -- this is the condition for the procedure Get_TA (InstructorID)
    (InstructorID is the input parameter for the procedure Get_TA (InstructorID))
10. END $$
    -- this is the end of the procedure Get_TA (InstructorID)
11. DELIMITER ;
    -- this is the delimiter for the procedure Get_TA (InstructorID)
*/
DELIMITER $$
CREATE PROCEDURE Get_TA(IN InstructorID VARCHAR(10))
BEGIN
    SELECT S.StudentName
    FROM Student AS S, TA AS T, Course AS C, Enrolled AS E
    WHERE S.SSN = T.SSN
    AND T.SSN = E.SSN
    AND E.CourseNo = C.CourseNo
    AND C.InstructorID = InstructorID;
END $$
DELIMITER ;

/* There are 5 instructors populated giving 5 diff ways to call this procedure */

CALL Get_TA(0900000001); -- InstructorID = 0900000001 (Byleth Eisner)
CALL Get_TA(0900000002); -- InstructorID = 0900000002 (Hanneman von Essar)
CALL Get_TA(0900000003); -- InstructorID = 0900000003 (Manuela Casagranda)
CALL Get_TA(0900000004); -- InstructorID = 0900000004 (Shamir Nevrand)
CALL Get_TA(0900000005); -- InstructorID = 0900000005 (Cassandra Charon)

/*
2. A stored procedure to output tall the students enrolled in a given course

    Name of the procedure : GetStudentCourse
    Input parameters : Course Number (CourseNo)
    Output : Print SSN, Student Name (StudentName), Address, and Email
        (use select statement, as shown in the examples of MySQL procedure slides)
-----------------------------------------------------------
logic:
1. DELIMITER $$ -- this is the delimiter for the procedure GetStudentCourse (CourseNo)
2. CREATE PROCEDURE GetStudentCourse(IN CourseNo VARCHAR(7))
    -- this is the input parameter for the procedure GetStudentCourse (CourseNo)
3. BEGIN
    -- this is the beginning of the procedure GetStudentCourse (CourseNo)
4. SELECT S.SSN, S.StudentName, S.Address, S.Email
    -- this is the output of the procedure GetStudentCourse (CourseNo)
5. FROM Student AS S, Enrolled AS E
    -- this is the tables used in the procedure GetStudentCourse (CourseNo)
6. WHERE S.SSN = E.SSN
    -- this is the join condition for the procedure GetStudentCourse (CourseNo)
    (SSN is a foreign key in the Enrolled table and the Student table)
7. AND E.CourseNo = CourseNo;
    -- this is the condition for the procedure GetStudentCourse (CourseNo)
    (CourseNo is the input parameter for the procedure GetStudentCourse (CourseNo))
8. END $$
    -- this is the end of the procedure GetStudentCourse (CourseNo)
9. DELIMITER ;
    -- this is the delimiter for the procedure GetStudentCourse (CourseNo)
*/

DELIMITER $$
CREATE PROCEDURE GetStudentCourse(IN CourseNo VARCHAR(7))
BEGIN
    SELECT S.SSN, S.StudentName, S.Address, S.Email
    FROM Student AS S, Enrolled AS E
    WHERE S.SSN = E.SSN
    AND E.CourseNo = CourseNo;
END $$
DELIMITER ;

/* There are 7 courses populated giving 7 diff ways to call this procedure */

CALL GetStudentCourse(0300001); -- CourseNo = 0300001 (ADV DB MGT Systems)
CALL GetStudentCourse(0300002); -- CourseNo = 0300002 (Data WHS & Mining)
CALL GetStudentCourse(0300003); -- CourseNo = 0300003 (INTRO to PROB Theory)
CALL GetStudentCourse(0300004); -- CourseNo = 0300004 (Computer Forensic)
CALL GetStudentCourse(0300005); -- CourseNo = 0300005 (DB MGMT Systems)
CALL GetStudentCourse(0300006); -- CourseNo = 0300006 (INTRO MATH STATS)
CALL GetStudentCourse(0300007); -- CourseNo = 0300007 (Combinatorics)
