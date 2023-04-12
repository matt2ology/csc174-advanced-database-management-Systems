/* Homework 4 : Procedure - section 5
 Design stored procedures to implement the following requirements:

 1. A stored procedure to output the names of the TAs for a given instructor.
    The instructor can teach multiple courses, so retrieve the TAs for all
    his/her courses.

    1.1 Procedure Name : Get_TA
    1.2 Input parameter : Instructor ID
    1.3 Output : Print TA names (use SELECT statement to print the names)

 2. A stored procedure to output the names of the students enrolled in a given
    course.

    2.1 Procedure Name : GetStudentCourse
    2.2 Input parameter : Course Number
    2.3 Output : Print SSN, Student Name, Email (use SELECT statement to print)

 When the database is populated the inserted data for the
 TAs and students are returned by the procedures.
*/

/* Drop PROCEDUREs */

DROP PROCEDURE IF EXISTS Get_TA;
DROP PROCEDURE IF EXISTS GetStudentCourse;

/* Logic for procedure Get_TA
 Q: can you read VARCHAR as an INT?
 A: no, you cannot. You must convert it to an INT first.
 Q: How can you convert a VARCHAR to an INT?
 A: Use CAST() function. Example: CAST('200100001' AS UNSIGNED INTEGER)
 Take Instructor_ID as input parameter
   -- Begin procedure body
   -- Print TA names
   -- Course, Student, TA tables are joined together to get TA names for a given instructor
   -- InstructorID is a foreign key in Course table and a primary key in Instructor table
   -- CAST() function converts VARCHAR to INT for comparison with INT column in Course table
   -- End of procedure body
*/
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

/* Logic for procedure GetStudentCourse
 Take Course_Number as input parameter
   -- Begin procedure body
   -- Print SSN, Student Name, Email
   -- Course, Student, Enrolled tables are joined together to get student info for a given course
   -- Course_Number is a foreign key in Enrolled table and a primary key in Course table
   -- End of procedure body
*/
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
-- CourseNo : 3300001 -> Expects Student : 190000001 - Haruhi Fujioka
-- CourseNo : 3300001 -> Expects Student : 190000006 - Ferdinand von Aegir
-- CourseNo : 3300001 -> Expects Student : 190000008 - Dorothea Arnault
-- CourseNo : 3300001 -> Expects Student : 190000010 - Mercedes von Bartels
-- CourseNo : 3300001 -> Expects Student : 190000011 - Annette Fantine Dominic
-- CourseNo : 3300001 -> Expects Student : 190000014 - Raphael Kirsten
-- CourseNo : 3300001 -> Expects Student : 190000015 - Yuri Leclerc
-- CourseNo : 3300001 -> Expects Student : 200100003 - Edelgard von Hresvelg

CALL GetStudentCourse('3300002'); -- Intro to Prob Theory -> Expect 9 students
-- CourseNo : 3300002 -> Expects Student : 190000001 - Haruhi Fujioka
-- CourseNo : 3300002 -> Expects Student : 190000003 - Kyoya Ootori
-- CourseNo : 3300002 -> Expects Student : 190000005 - Takashi Morinozuka
-- CourseNo : 3300002 -> Expects Student : 190000006 - Ferdinand von Aegir
-- CourseNo : 3300002 -> Expects Student : 190000008 - Dorothea Arnault
-- CourseNo : 3300002 -> Expects Student : 190000009 - Felix Hugo Fraldarius
-- CourseNo : 3300002 -> Expects Student : 190000015 - Yuri Leclerc
-- CourseNo : 3300002 -> Expects Student : 200100001 - Claude von Riegan
-- CourseNo : 3300002 -> Expects Student : 200100002 - Dimitri Alexandre Blaiddyd

CALL GetStudentCourse('3300003'); -- Computer Forensics -> Expect 7 students
-- CourseNo : 3300003 -> Expects Student : 190000001 - Haruhi Fujioka
-- CourseNo : 3300003 -> Expects Student : 190000002 - Tamaki Suoh
-- CourseNo : 3300003 -> Expects Student : 190000003 - Kyoya Ootori
-- CourseNo : 3300003 -> Expects Student : 190000008 - Dorothea Arnault
-- CourseNo : 3300003 -> Expects Student : 190000010 - Mercedes von Bartels
-- CourseNo : 3300003 -> Expects Student : 190000013 - Marianne von Edmund
-- CourseNo : 3300003 -> Expects Student : 200100002 - Dimitri Alexandre Blaiddyd

CALL GetStudentCourse('3300004'); -- Combinatorics -> Expect 9 students
-- CourseNo : 3300004 -> Expects Student : 190000002 - Tamaki Suoh
-- CourseNo : 3300004 -> Expects Student : 190000003 - Kyoya Ootori
-- CourseNo : 3300004 -> Expects Student : 190000005 - Takashi Morinozuka
-- CourseNo : 3300004 -> Expects Student : 190000006 - Ferdinand von Aegir
-- CourseNo : 3300004 -> Expects Student : 190000007 - Bernadetta von Varley
-- CourseNo : 3300004 -> Expects Student : 190000009 - Felix Hugo Fraldarius
-- CourseNo : 3300004 -> Expects Student : 190000011 - Annette Fantine Dominic
-- CourseNo : 3300004 -> Expects Student : 190000013 - Marianne von Edmund
-- CourseNo : 3300004 -> Expects Student : 200100001 - Claude von Riegan

CALL GetStudentCourse('3300005'); -- Critical Thinking -> Expect 8 students
-- CourseNo : 3300005 -> Expects Student : 190000002 - Tamaki Suoh
-- CourseNo : 3300005 -> Expects Student : 190000003 - Kyoya Ootori
-- CourseNo : 3300005 -> Expects Student : 190000006 - Ferdinand von Aegir
-- CourseNo : 3300005 -> Expects Student : 190000010 - Mercedes von Bartels
-- CourseNo : 3300005 -> Expects Student : 190000012 - Lysithea von Ordelia
-- CourseNo : 3300005 -> Expects Student : 190000013 - Marianne von Edmund
-- CourseNo : 3300005 -> Expects Student : 200100001 - Claude von Riegan
-- CourseNo : 3300005 -> Expects Student : 200100003 - Edelgard von Hresvelg

CALL GetStudentCourse('3300006'); -- Leadership and Management -> Expect 11 students
-- CourseNo : 3300006 -> Expects Student : 190000003 - Kyoya Ootori
-- CourseNo : 3300006 -> Expects Student : 190000004 - Mitsukuni Haninozuka
-- CourseNo : 3300006 -> Expects Student : 190000005 - Takashi Morinozuka
-- CourseNo : 3300006 -> Expects Student : 190000007 - Bernadetta von Varley
-- CourseNo : 3300006 -> Expects Student : 190000009 - Felix Hugo Fraldarius
-- CourseNo : 3300006 -> Expects Student : 190000011 - Annette Fantine Dominic
-- CourseNo : 3300006 -> Expects Student : 190000012 - Lysithea von Ordelia
-- CourseNo : 3300006 -> Expects Student : 190000013 - Marianne von Edmund
-- CourseNo : 3300006 -> Expects Student : 200100001 - Claude von Riegan
-- CourseNo : 3300006 -> Expects Student : 200100002 - Dimitri Alexandre Blaiddyd
-- CourseNo : 3300006 -> Expects Student : 200100003 - Edelgard von Hresvelg

CALL GetStudentCourse('3300007'); -- Nursing Care Of Adults -> Expect 9 students
-- CourseNo : 3300007 -> Expects Student : 190000001 - Haruhi Fujioka
-- CourseNo : 3300007 -> Expects Student : 190000004 - Mitsukuni Haninozuka
-- CourseNo : 3300007 -> Expects Student : 190000006 - Ferdinand von Aegir
-- CourseNo : 3300007 -> Expects Student : 190000007 - Bernadetta von Varley
-- CourseNo : 3300007 -> Expects Student : 190000008 - Dorothea Arnault
-- CourseNo : 3300007 -> Expects Student : 190000010 - Mercedes von Bartels
-- CourseNo : 3300007 -> Expects Student : 190000014 - Raphael Kirsten
-- CourseNo : 3300007 -> Expects Student : 190000015 - Yuri Leclerc
-- CourseNo : 3300007 -> Expects Student : 200100001 - Claude von Riegan

CALL GetStudentCourse('3300008'); -- Microbiology -> Expect 7 students
-- CourseNo : 3300008 -> Expects Student : 190000001 - Haruhi Fujioka
-- CourseNo : 3300008 -> Expects Student : 190000004 - Mitsukuni Haninozuka
-- CourseNo : 3300008 -> Expects Student : 190000005 - Takashi Morinozuka
-- CourseNo : 3300008 -> Expects Student : 190000008 - Dorothea Arnault
-- CourseNo : 3300008 -> Expects Student : 190000009 - Felix Hugo Fraldarius
-- CourseNo : 3300008 -> Expects Student : 190000014 - Raphael Kirsten
-- CourseNo : 3300008 -> Expects Student : 200100002 - Dimitri Alexandre Blaiddyd

CALL GetStudentCourse('3300009'); -- Argumentation -> Expect 10 students
-- CourseNo : 3300009 -> Expects Student : 190000002 - Tamaki Suoh
-- CourseNo : 3300009 -> Expects Student : 190000004 - Mitsukuni Haninozuka
-- CourseNo : 3300009 -> Expects Student : 190000007 - Bernadetta von Varley
-- CourseNo : 3300009 -> Expects Student : 190000010 - Mercedes von Bartels
-- CourseNo : 3300009 -> Expects Student : 190000011 - Annette Fantine Dominic
-- CourseNo : 3300009 -> Expects Student : 190000012 - Lysithea von Ordelia
-- CourseNo : 3300009 -> Expects Student : 190000013 - Marianne von Edmund
-- CourseNo : 3300009 -> Expects Student : 190000014 - Raphael Kirsten
-- CourseNo : 3300009 -> Expects Student : 200100002 - Dimitri Alexandre Blaiddyd
-- CourseNo : 3300009 -> Expects Student : 200100003 - Edelgard von Hresvelg

CALL GetStudentCourse('3300010'); -- Operations Management -> Expect 11 students
-- CourseNo : 3300010 -> Expects Student : 190000001 - Haruhi Fujioka
-- CourseNo : 3300010 -> Expects Student : 190000002 - Tamaki Suoh
-- CourseNo : 3300010 -> Expects Student : 190000004 - Mitsukuni Haninozuka
-- CourseNo : 3300010 -> Expects Student : 190000005 - Takashi Morinozuka
-- CourseNo : 3300010 -> Expects Student : 190000007 - Bernadetta von Varley
-- CourseNo : 3300010 -> Expects Student : 190000009 - Felix Hugo Fraldarius
-- CourseNo : 3300010 -> Expects Student : 190000011 - Annette Fantine Dominic
-- CourseNo : 3300010 -> Expects Student : 190000012 - Lysithea von Ordelia
-- CourseNo : 3300010 -> Expects Student : 190000014 - Raphael Kirsten
-- CourseNo : 3300010 -> Expects Student : 190000015 - Yuri Leclerc
-- CourseNo : 3300010 -> Expects Student : 200100003 - Edelgard von Hresvelg

CALL GetStudentCourse('3300011'); -- Principles Of Marketing -> Expect 7 students
-- CourseNo : 3300011 -> Expects Student : 190000002 - Tamaki Suoh
-- CourseNo : 3300011 -> Expects Student : 190000006 - Ferdinand von Aegir
-- CourseNo : 3300011 -> Expects Student : 190000007 - Bernadetta von Varley
-- CourseNo : 3300011 -> Expects Student : 190000010 - Mercedes von Bartels
-- CourseNo : 3300011 -> Expects Student : 190000012 - Lysithea von Ordelia
-- CourseNo : 3300011 -> Expects Student : 190000013 - Marianne von Edmund
-- CourseNo : 3300011 -> Expects Student : 190000015 - Yuri Leclerc

CALL GetStudentCourse('3300012'); -- Investments -> Expect 9 students
-- CourseNo : 3300012 -> Expects Student : 190000003 - Kyoya Ootori
-- CourseNo : 3300012 -> Expects Student : 190000004 - Mitsukuni Haninozuka
-- CourseNo : 3300012 -> Expects Student : 190000005 - Takashi Morinozuka
-- CourseNo : 3300012 -> Expects Student : 190000008 - Dorothea Arnault
-- CourseNo : 3300012 -> Expects Student : 190000009 - Felix Hugo Fraldarius
-- CourseNo : 3300012 -> Expects Student : 190000011 - Annette Fantine Dominic
-- CourseNo : 3300012 -> Expects Student : 190000012 - Lysithea von Ordelia
-- CourseNo : 3300012 -> Expects Student : 190000014 - Raphael Kirsten
-- CourseNo : 3300012 -> Expects Student : 190000015 - Yuri Leclerc

CALL GetStudentCourse('3300013'); -- Sustainability Business -> Expect 1 Student
-- CourseNo : 3300013 -> Expects Student : 200100002 - Dimitri Alexandre Blaiddyd

CALL GetStudentCourse('3300014'); -- Venture Growth Strategies -> Expect 1 Student
-- CourseNo : 3300014 -> Expects Student : 200100003 - Edelgard von Hresvelg

CALL GetStudentCourse('3300015'); -- Corporate Entrepreneurship -> Expect 1 Student
-- CourseNo : 3300015 -> Expects Student : 200100001 - Claude von Riegan
