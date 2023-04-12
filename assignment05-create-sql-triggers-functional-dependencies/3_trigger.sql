/* 
 Matthew Mendoza
 CSC 174 - Assignment 05
 Create triggers to maintain the consistency of the derived
 attribute NoOfStudents in the course table.
*/

DROP TRIGGER IF EXISTS Inc_enrollment_number;
DROP TRIGGER IF EXISTS Del_enrollment_number;

/*
 When add a new record in the enrollment table, update the
 corresponding value of NoOfStudents Enrolled in the course.
 Trigger Name : Inc_enrollment_number
*/

-- use // as the delimiter instead of ; 
-- so that we can use ; in the trigger code below without any problem
DELIMITER //
CREATE TRIGGER Inc_enrollment_number
AFTER INSERT ON Enrolled -- after inserting a record into the Enrolled table
FOR EACH ROW
BEGIN -- start the trigger
    IF(NEW.CourseNo IS NOT NULL) THEN
        UPDATE Course -- update the Course table with the new value of NoOfStudents
        SET NoOfStudents = NoOfStudents + 1 -- increment the NoOfStudents by 1
        -- where the CourseNo is the same as the CourseNo in the new record in the Enrolled table
        WHERE CourseNo = NEW.CourseNo;
    END IF;
END //
DELIMITER ;

/* 
 VALIDATION : check the current NoOfStudents in the Course,
 shows all students before Inc_enrollment_number trigger was created.
 Expect 11 students in Operations Management.
*/

-- CALL GetStudentCourse('3300010'); -- If procedure has been implemented
SELECT * FROM Course WHERE CourseNo = '3300010';
-- count the number of students in Operations Management
SELECT COUNT(*) FROM Enrolled WHERE CourseNo = 3300010;

/*
 INSERT CLAUSE - enroll 3 students
    Kyoya Ootori, Ferdinand von Aegir, and Dorothea Arnault
 into Operations Management (CourseNo = '3300010')
*/

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000003, 3300010, 'A'), -- student 12 - Kyoya Ootori
(190000006, 3300010, 'C'), -- student 13 - Ferdinand von Aegir
(190000008, 3300010, 'B'); -- student 14 - Dorothea Arnault

/* 
 VALIDATION : check the current NoOfStudents in the Course,
 shows all students after Inc_enrollment_number trigger was created.
 Expect 14 students in Operations Management - 11 + 3 = 14 NoOfStudents.
*/

-- CALL GetStudentCourse('3300010'); -- If procedure has been implemented
SELECT * FROM Course WHERE CourseNo = '3300010';
-- count the number of students in Operations Management
SELECT COUNT(*) FROM Enrolled WHERE CourseNo = 3300010;

-- ========================================================================= --

/*
 When delete a record in the enrollment table, update the
 corresponding value of NoOfStudents Enrolled in the course.
 Trigger Name : Del_enrollment_number
*/

DELIMITER //
CREATE TRIGGER Del_enrollment_number
AFTER DELETE ON Enrolled -- after deleting a record from the Enrolled table
FOR EACH ROW
BEGIN -- start the trigger
    IF(OLD.CourseNo IS NOT NULL) THEN
        UPDATE Course -- update the Course table with the new value of NoOfStudents
        SET NoOfStudents = NoOfStudents - 1 -- decrement the NoOfStudents by 1
        -- where the CourseNo is the same as the CourseNo in the old record in the Enrolled table
        WHERE CourseNo = OLD.CourseNo;
    END IF;
END //
DELIMITER ;

/* 
 VALIDATION : check the current NoOfStudents in the Course,
 shows all students before Del_enrollment_number trigger was created.
 Expect 14 students in Operations Management - 11 + 3 = 14 NoOfStudents.
*/

-- CALL GetStudentCourse('3300010'); -- If procedure has been implemented
SELECT * FROM Course WHERE CourseNo = '3300010';
-- count the number of students in Operations Management
SELECT COUNT(*) FROM Enrolled WHERE CourseNo = '3300010';

/*
 DELETE CLAUSES - drop 3 students:
    Kyoya Ootori, Ferdinand von Aegir, and Dorothea Arnault.
 into Operations Management (CourseNo = '3300010')
*/

DELETE FROM Enrolled
WHERE
SSN = '190000003' AND -- student 12 - Kyoya Ootori
CourseNo = '3300010'; -- Operations Management

DELETE FROM Enrolled
WHERE
SSN = '190000006' AND -- student 13 - Ferdinand von Aegir
CourseNo = '3300010'; -- Operations Management

DELETE FROM Enrolled
WHERE
SSN = '190000008' AND -- student 14 - Dorothea Arnault
CourseNo = '3300010'; -- Operations Management

/* 
 VALIDATION : check the current NoOfStudents in the Course,
 shows all students after Del_enrollment_number trigger is created.
 Expect 11 students in Operations Management - 14 - 3 = 11 NoOfStudents.
*/

-- CALL GetStudentCourse('3300010'); -- If procedure has been implemented
SELECT * FROM Course WHERE CourseNo = '3300010';
SELECT COUNT(*) FROM Enrolled WHERE CourseNo = '3300010';

-- Given R(C, D, E, F, W), and the following functional dependencies:
-- F -> E
-- F -> W
-- C -> D
-- We decompose R into R1(C, D) and R2(E, F, W, C).
-- Does this decomposition have the lossless join property?
-- Answer: Yes, it does have the lossless join property.
-- Because the lossless join property is satisfied if and only if the following conditions are satisfied:
-- 1. The functional dependencies of R1 are a subset of the functional dependencies of R.
-- 2. The functional dependencies of R2 are a subset of the functional dependencies of R.
-- 3. The functional dependencies of R1 and R2 are disjoint.
-- 4. The attributes of R1 and R2 are disjoint.
-- 5. The attributes of R1 and R2 are a subset of the attributes of R.
-- 6. The attributes of R1 and R2 are a partition of the attributes of R.

-- Show your steps to achieve the answer
-- Step 1: Find the functional dependencies of R1 and R2
-- R1(C, D) has the following functional dependencies:
-- C -> D
-- R2(E, F, W, C) has the following functional dependencies:
-- F -> E
-- F -> W
-- C -> E
-- C -> W

-- Step 2: Check if the functional dependencies of R1 and R2 are a subset of the functional dependencies of R
-- R1(C, D) has the following functional dependencies:
-- C -> D
-- R(C, D, E, F, W) has the following functional dependencies:
-- F -> E
-- F -> W
-- C -> D
-- C -> E
-- C -> W
-- R1(C, D) is a subset of R(C, D, E, F, W)

-- R2(E, F, W, C) has the following functional dependencies:
-- F -> E
-- F -> W
-- C -> E
-- C -> W
-- R(C, D, E, F, W) has the following functional dependencies:
-- F -> E
-- F -> W
-- C -> D
-- C -> E

-- R2(E, F, W, C) is a subset of R(C, D, E, F, W)

-- Step 3: Check if the functional dependencies of R1 and R2 are disjoint
-- R1(C, D) has the following functional dependencies:
-- C -> D
-- R2(E, F, W, C) has the following functional dependencies:
-- F -> E
-- F -> W
-- C -> E
-- C -> W
-- R1(C, D) and R2(E, F, W, C) are disjoint
