-- Drop FUNCTIONs

DROP FUNCTION IF EXISTS Course_Instructor;

-- Create FUNCTION

DELIMITER $$
CREATE FUNCTION Course_Instructor (course_name VARCHAR(30))
RETURNS VARCHAR(20)
BEGIN
    DECLARE instructor_name VARCHAR(20);
    SELECT InstructorName INTO instructor_name
    FROM Instructor
    -- so we can use the CourseName input parameter in the
    -- WHERE clause of the outer query to return the InstructorName from the Instructor table
    WHERE InstructorID = (
        SELECT InstructorID
        FROM Course
        WHERE CourseName = course_name
    );
    RETURN instructor_name;
END $$
DELIMITER ;

-- Test function with SELECT statements to verify it works as expected
SELECT Course_Instructor('Marketing Analytics');        -- Expects : "Byleth Eisner"
SELECT Course_Instructor('Intro to Prob Theory');       -- Expects : "Byleth Eisner"
SELECT Course_Instructor('Computer Forensics');         -- Expects : "Byleth Eisner"
SELECT Course_Instructor('Combinatorics');              -- Expects : "Hanneman von Essar"
SELECT Course_Instructor('Critical Thinking');          -- Expects : "Hanneman von Essar"
SELECT Course_Instructor('Leadership and Management');  -- Expects : "Hanneman von Essar"
SELECT Course_Instructor('Nursing Care Of Adults');     -- Expects : "Manuela Casagranda"
SELECT Course_Instructor('Microbiology');               -- Expects : "Manuela Casagranda"
SELECT Course_Instructor('Argumentation');              -- Expects : "Manuela Casagranda"
SELECT Course_Instructor('Operations Management');      -- Expects : "Shamir Nevrand"
SELECT Course_Instructor('Principles Of Marketing');    -- Expects : "Shamir Nevrand"
SELECT Course_Instructor('Investments');                -- Expects : "Shamir Nevrand"
SELECT Course_Instructor('Sustainability Business');    -- Expects : "Cassandra Charon"
SELECT Course_Instructor('Venture Growth Strategies');  -- Expects : "Cassandra Charon"
SELECT Course_Instructor('Corporate Entrepreneurship'); -- Expects : "Cassandra Charon"
