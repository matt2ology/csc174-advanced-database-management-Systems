/* Drop PROCEDUREs */

DROP PROCEDURE IF EXISTS Get_TA;
DROP PROCEDURE IF EXISTS GetStudentCourse;

DELIMITER $$ -- Change delimiter to $$ to allow ; in procedure body
CREATE PROCEDURE Get_TA(IN Instructor_ID VARCHAR(20))
BEGIN 
    SELECT S.StudentName -- Print TA names
    -- Course, Student, TA tables are joined together to get TA names for a given instructor
    FROM Course AS C, Student AS S, TA AS T 
    -- InstructorID is a foreign key in Course table and a primary key in Instructor table
    -- CAST() function converts VARCHAR to INT for comparison with INT column in Course table
    WHERE C.InstructorID=CAST(Instructor_ID AS UNSIGNED INTEGER) AND C.TASSN=T.SSN AND T.SSN=S.SSN;
END $$ -- End of procedure body
DELIMITER ; -- Change delimiter back to ;


-- Test procedure Get_TA with SELECT statements to verify it works as expected

CALL Get_TA("0900000001"); -- Expected : Claude and Edelgard
CALL Get_TA("0900000002"); -- Expected : Dimitri and Edelgard
CALL Get_TA("0900000003"); -- Expected : Claude and Dimitri
CALL Get_TA("0900000004"); -- Expected : Claude and Dimitri and Edelgard
CALL Get_TA("0900000005"); -- Expected : Claude and Dimitri and Edelgard

DELIMITER $$
CREATE PROCEDURE GetStudentCourse(IN Course_Number INTEGER)
BEGIN
	SELECT S.SSN, S.StudentName, S.Address, S.Email
	FROM Course AS C, Enrolled AS E, Student AS S
	WHERE Course_Number=C.CourseNo AND C.CourseNo=E.CourseNo AND E.SSN=S.SSN ;	
END $$
DELIMITER ;

-- Test procedure GetStudentCourse with SELECT statements to verify it works as expected

CALL GetStudentCourse('3300001'); -- Marketing Analytics -> Expect 8 students

CALL GetStudentCourse('3300002'); -- Intro to Prob Theory -> Expect 9 students

CALL GetStudentCourse('3300003'); -- Computer Forensics -> Expect 7 students

CALL GetStudentCourse('3300004'); -- Combinatorics -> Expect 9 students

CALL GetStudentCourse('3300005'); -- Critical Thinking -> Expect 8 students

CALL GetStudentCourse('3300006'); -- Leadership and Management -> Expect 11 students

CALL GetStudentCourse('3300007'); -- Nursing Care Of Adults -> Expect 9 students

CALL GetStudentCourse('3300008'); -- Microbiology -> Expect 7 students

CALL GetStudentCourse('3300009'); -- Argumentation -> Expect 10 students

CALL GetStudentCourse('3300010'); -- Operations Management -> Expect 11 students

CALL GetStudentCourse('3300011'); -- Principles Of Marketing -> Expect 7 students

CALL GetStudentCourse('3300012'); -- Investments -> Expect 9 students

CALL GetStudentCourse('3300013'); -- Sustainability Business -> Expect 1 Student

CALL GetStudentCourse('3300014'); -- Venture Growth Strategies -> Expect 1 Student

CALL GetStudentCourse('3300015'); -- Corporate Entrepreneurship -> Expect 1 Student
