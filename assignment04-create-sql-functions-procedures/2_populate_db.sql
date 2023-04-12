/* Creating data for tables Student, TA, Course, Enrolled, Instructor, Classroom, OnlineCourse, InPersonCourse */

/* UID
 TA (SSN) - 9 chars : 2001xxxxx
 Student (SSN) - 9 chars : 19xxxxxxx
 Instructor (InstructorID) - 10 chars : 09xxxxxxxx
 Course (CourseNo) - 7 chars : 03xxxxxxx
 OnlineCourse (CourseNo) - 7 chars : 03xxxxxxx
 InPersonCourse (CourseNo) - 7 chars : 03xxxxxxx
 Enrolled (SSN, CourseNo) - 9 chars + 7 chars : xxxxxxxxx
 Classroom (RoomNo, Building) - 2 chars + 10 chars : xxxxxxxxx
 */

/* Create Students -- SSN : 19xxxxxxx */
-- Student SSN : 190000001 - Haruhi Fujioka
-- Student SSN : 190000002 - Tamaki Suoh
-- Student SSN : 190000003 - Kyoya Ootori
-- Student SSN : 190000004 - Mitsukuni Haninozuka
-- Student SSN : 190000005 - Takashi Morinozuka
-- Student SSN : 190000006 - Ferdinand von Aegir
-- Student SSN : 190000007 - Bernadetta von Varley
-- Student SSN : 190000008 - Dorothea Arnault
-- Student SSN : 190000009 - Felix Hugo Fraldarius
-- Student SSN : 190000010 - Mercedes von Bartels
-- Student SSN : 190000011 - Annette Fantine Dominic
-- Student SSN : 190000012 - Lysithea von Ordelia
-- Student SSN : 190000013 - Marianne von Edmund
-- Student SSN : 190000014 - Raphael Kirsten
-- Student SSN : 190000015 - Yuri Leclerc
-- TA TASSN    : 200100001 - Claude von Riegan
-- TA TASSN    : 200100002 - Dimitri Alexandre Blaiddyd
-- TA TASSN    : 200100003 - Edelgard von Hresvelg

/* Student SSN : 190000001 - Haruhi Fujioka
 IS Enrolled In -- CourseNo : 3300001 - Marketing Analytics
 IS Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 IS Enrolled In -- CourseNo : 3300003 - Computer Forensics
 IS Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 IS Enrolled In -- CourseNo : 3300008 - Microbiology
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000001,'Haruhi Fujioka','7098 Prince Ave','haruhi_fujioka@hostclub.com');

/* Student SSN : 190000002 - Tamaki Suoh
 IS Enrolled In -- CourseNo : 3300003 - Computer Forensics
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300005 - Critical Thinking
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300011 - Principles Of Marketing
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000002,'Tamaki Suoh','743 Arlington Lane','tamaki_suoh@hostclub.com');

/* Student SSN : 190000003 - Kyoya Ootori
 IS Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 IS Enrolled In -- CourseNo : 3300003 - Computer Forensics
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300005 - Critical Thinking
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Management
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000003,'Kyoya Ootori','756 Pennington Road','kyoya_ootori@hostclub.com');

/* Student SSN : 190000004 - Mitsukuni Haninozuka
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Management
 IS Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 IS Enrolled In -- CourseNo : 3300008 - Microbiology
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000004,'Mitsukuni Haninozuka','142 Old Vernon St','mitsukuni_nozuka@hostclub.com');

/* Student SSN : 190000005 - Takashi Morinozuka
 IS Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Managemen
 IS Enrolled In -- CourseNo : 3300008 - Microbiology
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000005,'Takashi Morinozuka','9245 Pineknoll Ave','takashi_nozuka@hostclub.com');

/* BLACK EAGLES Students */

/* Student SSN : 190000006 - Ferdinand von Aegir
 IS Enrolled In -- CourseNo : 3300001 - Marketing Analytics
 IS Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300005 - Critical Thinking
 IS Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 IS Enrolled In -- CourseNo : 3300011 - Principles Of Marketing
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000006,'Ferdinand von Aegir','123 House Aegir','ferdinand_von_aegir@aegir.com');

/* Student SSN : 190000007 - Bernadetta von Varley
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Management
 IS Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300011 - Principles Of Marketing
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000007,'Bernadetta von Varley','123 House Varley','bernie@varley.com');

/* Student SSN : 190000008 - Dorothea Arnault
 IS Enrolled In -- CourseNo : 3300001 - Marketing Analytics
 IS Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 IS Enrolled In -- CourseNo : 3300003 - Computer Forensics
 IS Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 IS Enrolled In -- CourseNo : 3300008 - Microbiology
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000008,'Dorothea Arnault','941 Mittelfrank Opera Company','dorothea@mittelfrank_opera.com');

/* Blue Lions Students */

/* Student SSN : 190000009 - Felix Hugo Fraldarius
 IS Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Management
 IS Enrolled In -- CourseNo : 3300008 - Microbiology
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000009,'Felix Hugo Fraldarius','123 House Fraldarius','felix@fraldarius.com');

/* Student SSN : 190000010 - Mercedes von Bartels
 IS Enrolled In -- CourseNo : 3300001 - Marketing Analytic
 IS Enrolled In -- CourseNo : 3300003 - Computer Forensics
 IS Enrolled In -- CourseNo : 3300005 - Critical Thinking
 IS Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300011 - Principles Of Marketing
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000010,'Mercedes von Bartels','321 Garreg Mach Monastery','mercie@garregmach.com');

/* Student SSN : 190000011 - Annette Fantine Dominic
 IS Enrolled In -- CourseNo : 3300001 - Marketing Analytic
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Management
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000011,'Annette Fantine Dominic','572 House Dominic','annette@dominic.com');

/* Golden Deer Students */

/* Student SSN : 190000012 - Lysithea von Ordelia
 IS Enrolled In -- CourseNo : 3300005 - Critical Thinking
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Management
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300011 - Principles Of Marketing
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000012,'Lysithea von Ordelia','9245 House Ordelia','lys@ordelia.com');

/* Student SSN : 190000013 - Marianne von Edmund
 IS Enrolled In -- CourseNo : 3300003 - Computer Forensics
 IS Enrolled In -- CourseNo : 3300004 - Combinatorics
 IS Enrolled In -- CourseNo : 3300005 - Critical Thinking
 IS Enrolled In -- CourseNo : 3300006 - Leadership and Management
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300011 - Principles Of Marketing
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000013,'Marianne von Edmund','8254 House Edmund','Marianne@Edmund.com');

/* Student SSN : 190000014 - Raphael Kirsten
 IS Enrolled In -- CourseNo : 3300001 - Marketing Analytics
 IS Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 IS Enrolled In -- CourseNo : 3300008 - Microbiology
 IS Enrolled In -- CourseNo : 3300009 - Argumentation
 IS Enrolled In -- CourseNo : 3300010 - Operations Management
 IS Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000014,'Raphael Kirsten','8544 Leicester','the_beast@leicester.com');

/* Ashen Wolves */

/* Student SSN : 190000015 - Yuri Leclerc
 Is Enrolled In -- CourseNo : 3300001 - Marketing Analytics
 Is Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 Is Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 Is Enrolled In -- CourseNo : 3300010 - Operations Management
 Is Enrolled In -- CourseNo : 3300011 - Principles Of Marketing
 Is Enrolled In -- CourseNo : 3300012 - Investments
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000015,'Yuri Leclerc','8982 Rowe Ave','Yuri@ashen_wolves.com');

/* Three Houses Leaders Teacher Assistants (TA's) */ -- SSN (TA) - 2001xxxxx

/* Student TA SSN : 200100001 - Claude von Riegan
 Is Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 Is Enrolled In -- CourseNo : 3300004 - Combinatorics
 Is Enrolled In -- CourseNo : 3300005 - Critical Thinking
 Is Enrolled In -- CourseNo : 3300006 - Leadership and Management
 Is Enrolled In -- CourseNo : 3300007 - Nursing Care Of Adults
 Is Enrolled In -- CourseNo : 3300015 - Corporate Entrepreneurship
 TAs For -- CourseNo : 3300001 - Marketing Analytics
 TAs For -- CourseNo : 3300003 - Computer Forensics
 TAs For -- CourseNo : 3300009 - Argumentation
 TAs For -- CourseNo : 3300011 - Principles Of Marketing
 TAs For -- CourseNo : 3300013 - Sustainability Business
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(200100001,'Claude von Riegan','4592 Leicester Federation','claude@leicester.com');

/* Student TA SSN : 200100002 - Dimitri Alexandre Blaiddyd
 Is Enrolled In -- CourseNo : 3300002 - Intro to Prob Theory
 Is Enrolled In -- CourseNo : 3300003 - Computer Forensics
 Is Enrolled In -- CourseNo : 3300006 - Leadership and Management
 Is Enrolled In -- CourseNo : 3300008 - Microbiology
 Is Enrolled In -- CourseNo : 3300009 - Argumentation
 Is Enrolled In -- CourseNo : 3300013 - Sustainability Business
 TAs For -- CourseNo : 3300004 - Combinatorics 
 TAs For -- CourseNo : 3300007 - Nursing Care Of Adults
 TAs For -- CourseNo : 3300008 - Microbiology
 TAs For -- CourseNo : 3300010 - Operations Management
 TAs For -- CourseNo : 3300014 - Venture Growth Strategies
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(200100002,'Dimitri Alexandre Blaiddyd','1462 Garreg Mach Monastery','the_tempest_king@fhirdiad.com');

/* Student TA SSN : 200100003 - Edelgard von Hresvelg
 Is Enrolled In -- CourseNo : 3300001 - Marketing Analytics 
 Is Enrolled In -- CourseNo : 3300005 - Critical Thinking
 Is Enrolled In -- CourseNo : 3300006 - Leadership and Management
 Is Enrolled In -- CourseNo : 3300009 - Argumentation
 Is Enrolled In -- CourseNo : 3300010 - Operations Management
 Is Enrolled In -- CourseNo : 3300014 - Venture Growth Strategies
 TAs For -- CourseNo : 3300002 - Intro to Prob Theory
 TAs For -- CourseNo : 3300005 - Critical Thinking 
 TAs For -- CourseNo : 3300006 - Leadership and Management
 TAs For -- CourseNo : 3300012 - Investments
 TAs For -- CourseNo : 3300015 - Corporate Entrepreneurship
*/

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(200100003,'Edelgard von Hresvelg','8756 Enbarr','flame_emperor@adrestian.com');

/* Create TAs -- TASSN : 2001xxxxx */
-- TA TASSN : 200100001 - Claude von Riegan
-- TA TASSN : 200100002 - Dimitri Alexandre Blaiddyd
-- TA TASSN : 200100003 - Edelgard von Hresvelg
 
INSERT INTO TA
(SSN, Salary)
VALUES
(200100001, 10000); -- Claude von Riegan

INSERT INTO TA
(SSN, Salary)
VALUES
(200100002, 20000); -- Dimitri Alexandre Blaiddyd

INSERT INTO TA
(SSN, Salary)
VALUES
(200100003, 30000); -- Edelgard von Hresvelg

/* Create Courses */
-- CourseNo : 3300001 - Marketing Analytics
-- CourseNo : 3300002 - Intro to Prob Theory
-- CourseNo : 3300003 - Computer Forensics
-- CourseNo : 3300004 - Combinatorics
-- CourseNo : 3300005 - Critical Thinking
-- CourseNo : 3300006 - Leadership and Management
-- CourseNo : 3300007 - Nursing Care Of Adults
-- CourseNo : 3300008 - Microbiology
-- CourseNo : 3300009 - Argumentation
-- CourseNo : 3300010 - Operations Management
-- CourseNo : 3300011 - Principles Of Marketing
-- CourseNo : 3300012 - Investments
-- CourseNo : 3300013 - Sustainability Business
-- CourseNo : 3300014 - Venture Growth Strategies
-- CourseNo : 3300015 - Corporate Entrepreneurship

/*
 CourseNo : 3300001 - Marketing Analytics
 InstructorID: 0900000001 - Byleth Eisner
 TA : 200100001 - Claude von Riegan
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300001, 'Marketing Analytics', 90, 0900000001, 200100001);

/*
 CourseNo : 3300002 - Intro to Prob Theory
 InstructorID: 0900000001 - Byleth Eisner
 TA : 200100003 - Edelgard von Hresvelg
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300002, 'Intro to Prob Theory', 33, 0900000001, 200100003);

/*
 CourseNo : 3300003 - Computer Forensics
 InstructorID: 0900000001 - Byleth Eisner
 TA : 200100001 - Claude von Riegan
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300003, 'Computer Forensics', 23, 0900000001, 200100001);

/*
 CourseNo : 3300004 - Combinatorics
 InstructorID: 0900000002 - Hanneman von Essar
 TA : 200100002 - Dimitri Alexandre Blaiddyd 
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300004, 'Combinatorics', 39, 0900000002, 200100002);

/*
 CourseNo : 3300005 - Critical Thinking
 InstructorID: 0900000002 - Hanneman von Essar
 TA : 200100003 - Edelgard von Hresvelg
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300005, 'Critical Thinking', 39, 0900000002, 200100003);

/*
 CourseNo : 3300006 - Leadership and Management
 InstructorID: 0900000002 - Hanneman von Essar
 TA : 200100003 - Edelgard von Hresvelg
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300006, 'Leadership and Management', 39, 0900000002, 200100003);

/*
 CourseNo : 3300007 - Nursing Care Of Adults
 InstructorID: 0900000003 - Manuela Casagranda
 TA : 200100002 - Dimitri Alexandre Blaiddyd
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300007, 'Nursing Care Of Adults', 39, 0900000003, 200100002);

/*
 CourseNo : 3300008 - Microbiology
 InstructorID: 0900000003 - Manuela Casagranda
 TA : 200100002 - Dimitri Alexandre Blaiddyd
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300008, 'Microbiology', 39, 0900000003, 200100002);

/*
 CourseNo : 3300009 - Argumentation
 InstructorID: 0900000003 - Manuela Casagranda
 TA : 200100001 - Claude von Riegan
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300009, 'Argumentation', 39, 0900000003, 200100001);

/*
 CourseNo : 3300010 - Operations Management
 InstructorID: 0900000004 - Shamir Nevrand
 TA : 200100002 - Dimitri Alexandre Blaiddyd
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300010, 'Operations Management', 39, 0900000004, 200100002);

/*
 CourseNo : 3300011 - Principles Of Marketing
 InstructorID: 0900000004 - Shamir Nevrand
 TA : 200100001 - Claude von Riegan
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300011, 'Principles Of Marketing', 39, 0900000004, 200100001);

/*
 CourseNo : 3300012 - Investments
 InstructorID: 0900000004 - Shamir Nevrand
 TA : 200100003 - Edelgard von Hresvelg
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300012, 'Investments', 39, 0900000004, 200100003);

/*
 CourseNo : 3300013 - Sustainability Business
 InstructorID: 0900000005 - Cassandra Charon
 TA : 200100001 - Claude von Riegan 
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300013, 'Sustainability Business', 39, 0900000005, 200100001);

/*
 CourseNo : 3300014 - Venture Growth Strategies
 InstructorID: 0900000005 - Cassandra Charon
 TA : 200100002 - Dimitri Alexandre Blaiddyd
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300014, 'Venture Growth Strategies', 39, 0900000005, 200100002);

/*
 CourseNo : 3300015 - Corporate Entrepreneurship
 InstructorID: 0900000005 - Cassandra Charon
 TA : 200100003 - Edelgard von Hresvelg
*/

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300015, 'Corporate Entrepreneurship', 39, 0900000005, 200100003);

/* Create Enrolled Courses */

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000001, 3300001, 'B'); -- Haruhi Fujioka : Marketing Analytics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000001, 3300002, 'A'); -- Haruhi Fujioka : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000001, 3300003, 'F'); -- Haruhi Fujioka : Computer Forensics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000001, 3300007, 'A'); -- Haruhi Fujioka : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000001, 3300008, 'A'); -- Haruhi Fujioka : Microbiology

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000001, 3300010, 'B'); -- Haruhi Fujioka - Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000002, 3300003, 'C'); -- Tamaki Suoh : Computer Forensics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000002, 3300004, 'B'); -- Tamaki Suoh : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000002, 3300005, 'D'); -- Tamaki Suoh : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000002, 3300009, 'C'); -- Tamaki Suoh : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000002, 3300010, 'C'); -- Tamaki Suoh : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000002, 3300011, 'B'); -- Tamaki Suoh : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000003, 3300002, 'B'); -- Kyoya Ootori : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000003, 3300003, 'B'); -- Kyoya Ootori : Computer Forensics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000003, 3300004, 'B'); -- Kyoya Ootori : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000003, 3300005, 'A'); -- Kyoya Ootori : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000003, 3300006, 'A'); -- Kyoya Ootori : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000003, 3300012, 'A'); -- Kyoya Ootori : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000004, 3300006, 'C'); -- Mitsukuni Haninozuka : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000004, 3300007, 'B'); -- Mitsukuni Haninozuka : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000004, 3300008, 'B'); -- Mitsukuni Haninozuka : Microbiology

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000004, 3300009, 'C'); -- Mitsukuni Haninozuka : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000004, 3300010, 'B'); -- Mitsukuni Haninozuka : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000004, 3300012, 'B'); -- Mitsukuni Haninozuka : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000005, 3300002, 'B'); -- Takashi Morinozuka : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000005, 3300004, 'B'); -- Takashi Morinozuka : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000005, 3300006, 'C'); -- Takashi Morinozuka : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000005, 3300008, 'B'); -- Takashi Morinozuka : Microbiology

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000005, 3300010, 'C'); -- Takashi Morinozuka : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000005, 3300012, 'C'); -- Takashi Morinozuka : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000006, 3300001, 'D'); -- Ferdinand von Aegir : Marketing Analytics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000006, 3300002, 'B'); -- Ferdinand von Aegir : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000006, 3300004, 'D'); -- Ferdinand von Aegir : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000006, 3300005, 'C'); -- Ferdinand von Aegir : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000006, 3300007, 'B'); -- Ferdinand von Aegir : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000006, 3300011, 'A'); -- Ferdinand von Aegir : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000007, 3300004, 'B'); -- Bernadetta von Varley : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000007, 3300006, 'C'); -- Bernadetta von Varley : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000007, 3300007, 'B'); -- Bernadetta von Varley : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000007, 3300009, 'D'); -- Bernadetta von Varley : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000007, 3300010, 'C'); -- Bernadetta von Varley : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000007, 3300011, 'C'); -- Bernadetta von Varley : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000008, 3300001, 'B'); -- Dorothea Arnault : Marketing Analytics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000008, 3300002, 'C'); -- Dorothea Arnault : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000008, 3300003, 'C'); -- Dorothea Arnault : Computer Forensics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000008, 3300007, 'B'); -- Dorothea Arnault : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000008, 3300008, 'B'); -- Dorothea Arnault : Microbiology

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000008, 3300012, 'C'); -- Dorothea Arnault : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000009, 3300002, 'B'); -- Felix Hugo Fraldarius : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000009, 3300004, 'C'); -- Felix Hugo Fraldarius : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000009, 3300006, 'B'); -- Felix Hugo Fraldarius : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000009, 3300008, 'C'); -- Felix Hugo Fraldarius : Microbiology

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000009, 3300010, 'D'); -- Felix Hugo Fraldarius : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000009, 3300012, 'C'); -- Felix Hugo Fraldarius : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000010, 3300001, 'B'); -- Mercedes von Bartels : Marketing Analytic

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000010, 3300003, 'B'); -- Mercedes von Bartels : Computer Forensics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000010, 3300005, 'B'); -- Mercedes von Bartels : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000010, 3300007, 'B'); -- Mercedes von Bartels : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000010, 3300009, 'B'); -- Mercedes von Bartels : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000010, 3300011, 'B'); -- Mercedes von Bartels : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000011, 3300001, 'C'); -- Annette Fantine Dominic : Marketing Analytic

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000011, 3300004, 'C'); -- Annette Fantine Dominic : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000011, 3300006, 'B'); -- Annette Fantine Dominic : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000011, 3300009, 'C'); -- Annette Fantine Dominic : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000011, 3300010, 'F'); -- Annette Fantine Dominic : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000011, 3300011, 'B'); -- Annette Fantine Dominic : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000012, 3300005, 'A'); -- Lysithea von Ordelia : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000012, 3300006, 'A'); -- Lysithea von Ordelia : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000012, 3300009, 'A'); -- Lysithea von Ordelia : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000012, 3300010, 'A'); -- Lysithea von Ordelia : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000012, 3300011, 'A'); -- Lysithea von Ordelia : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000012, 3300012, 'A'); -- Lysithea von Ordelia : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000013, 3300003, 'B'); -- Marianne von Edmund : Computer Forensics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000013, 3300004, 'B'); -- Marianne von Edmund : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000013, 3300005, 'A'); -- Marianne von Edmund : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000013, 3300006, 'C'); -- Marianne von Edmund : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000013, 3300009, 'A'); -- Marianne von Edmund : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000013, 3300011, 'A'); -- Marianne von Edmund : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000014, 3300001, 'C'); -- Raphael Kirsten : Marketing Analytics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000014, 3300007, 'B'); -- Raphael Kirsten : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000014, 3300008, 'C'); -- Raphael Kirsten : Microbiology

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000014, 3300009, 'C'); -- Raphael Kirsten : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000014, 3300010, 'B'); -- Raphael Kirsten : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000014, 3300012, 'B'); -- Raphael Kirsten : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000015, 3300001, 'B'); -- Yuri Leclerc : Marketing Analytics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000015, 3300002, 'A'); -- Yuri Leclerc : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000015, 3300007, 'B'); -- Yuri Leclerc : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000015, 3300010, 'A'); -- Yuri Leclerc : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000015, 3300011, 'B'); -- Yuri Leclerc : Principles Of Marketing

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(190000015, 3300012, 'A'); -- Yuri Leclerc : Investments

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100001, 3300002, 'C'); -- Claude von Riegan : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100001, 3300004, 'B'); -- Claude von Riegan : Combinatorics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100001, 3300005, 'A'); -- Claude von Riegan : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100001, 3300006, 'A'); -- Claude von Riegan : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100001, 3300007, 'A'); -- Claude von Riegan : Nursing Care Of Adults

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100001, 3300015, 'B'); -- Claude von Riegan : Corporate Entrepreneurship

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100002, 3300002, 'A'); -- Dimitri Alexandre Blaiddyd : Intro to Prob Theory

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100002, 3300003, 'C'); -- Dimitri Alexandre Blaiddyd : Computer Forensics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100002, 3300006, 'A'); -- Dimitri Alexandre Blaiddyd : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100002, 3300008, 'B'); -- Dimitri Alexandre Blaiddyd : Microbiology

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100002, 3300009, 'A'); -- Dimitri Alexandre Blaiddyd : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100002, 3300013, 'B'); -- Dimitri Alexandre Blaiddyd : Sustainability Business

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100003, 3300001, 'C'); -- Edelgard von Hresvelg : Marketing Analytics

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100003, 3300005, 'A'); -- Edelgard von Hresvelg : Critical Thinking

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100003, 3300006, 'A'); -- Edelgard von Hresvelg : Leadership and Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100003, 3300009, 'B'); -- Edelgard von Hresvelg : Argumentation

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100003, 3300010, 'A'); -- Edelgard von Hresvelg : Operations Management

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(200100003, 3300014, 'B'); -- Edelgard von Hresvelg : Venture Growth Strategies

/* Create Instructors */
-- InstructorID : 0900000001 - Byleth Eisner
-- InstructorID : 0900000002 - Hanneman von Essar
-- InstructorID : 0900000003 - Manuela Casagranda
-- InstructorID : 0900000004 - Shamir Nevrand
-- InstructorID : 0900000005 - Cassandra Charon

/* Professor - InstructorID : 0900000001 - Byleth Eisner
 Teaches -- CourseNo : 3300001 - Marketing Analytics
 Teaches -- CourseNo : 3300002 - Intro to Prob Theory
 Teaches -- CourseNo : 3300003 - Computer Forensics
*/

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000001, 'Byleth Eisner');

/* Professor - InstructorID : 0900000002 - Hanneman von Essar
 Teaches -- CourseNo : 3300004 - Combinatorics
 Teaches -- CourseNo : 3300005 - Critical Thinking
 Teaches -- CourseNo : 3300006 - Leadership and Management
*/

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000002, 'Hanneman von Essar');

/* Professor - InstructorID : 0900000003 - Manuela Casagranda
 Teaches -- CourseNo : 3300007 - Nursing Care Of Adults
 Teaches -- CourseNo : 3300008 - Microbiology
 Teaches -- CourseNo : 3300009 - Argumentation
*/

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000003, 'Manuela Casagranda');

/* Professor - InstructorID : 0900000004 - Shamir Nevrand
 Teaches -- CourseNo : 3300010 - Operations Management
 Teaches -- CourseNo : 3300011 - Principles Of Marketing
 Teaches -- CourseNo : 3300012 - Investments
*/

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000004, 'Shamir Nevrand');

/* Professor - InstructorID : 0900000005 - Cassandra Charon
 Teaches -- CourseNo : 3300013 - Sustainability Business
 Teaches -- CourseNo : 3300014 - Venture Growth Strategies
 Teaches -- CourseNo : 3300015 - Corporate Entrepreneurship
*/

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000005, 'Cassandra Charon');

/* Create Classrooms */
-- Room 101 SQU  : 3300001 - Marketing Analytics
-- Room 101 SQU  : 3300002 - Intro to Prob Theory
-- Room 101 SQU  : 3300003 - Computer Forensics
-- Room 202 SQU  : 3300004 - Combinatorics
-- Room 202 SQU  : 3300005 - Critical Thinking
-- Room 202 SQU  : 3300006 - Leadership and Management
-- Room 1001 RVR : 3300007 - Nursing Care Of Adults
-- Room 1001 RVR : 3300008 - Microbiology
-- Room 1001 RVR : 3300009 - Argumentation
-- Room 1001 RVR : 3300010 - Operations Management
-- Room 2002 RVR : 3300011 - Principles Of Marketing
-- Room 2002 RVR : 3300012 - Investments
-- Room 2002 RVR : 3300013 - Sustainability Business
-- Room 3003 RVR : 3300014 - Venture Growth Strategies
-- Room 3003 RVR : 3300015 - Corporate Entrepreneurship

INSERT INTO Classroom
(RoomNo, Building, Capacity)
VALUES
(101, 'SQU', 30); -- SQU 202 - 30 seats available for students to sit in class

INSERT INTO Classroom
(RoomNo, Building, Capacity)
VALUES
(202, 'SQU', 30); -- SQU 202 - 30 seats available for students to sit in class

INSERT INTO Classroom
(RoomNo, Building, Capacity)
VALUES
(1001, 'RVR', 30); -- RVR 1001 - 30 seats available for students to sit in class

INSERT INTO Classroom
(RoomNo, Building, Capacity)
VALUES
(2002, 'RVR', 30); -- RVR 2002 - 30 seats available for students to sit in class

INSERT INTO Classroom
(RoomNo, Building, Capacity)
VALUES
(3003, 'RVR', 30); -- RVR 3003 - 30 seats available for students to sit in class


/* Create OnlineCourses */
-- CourseNo : 3300001 - Marketing Analytics
-- CourseNo : 3300003 - Computer Forensics
-- CourseNo : 3300005 - Critical Thinking
-- CourseNo : 3300009 - Argumentation
-- CourseNo : 3300011 - Principles Of Marketing

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(3300001, 'https://csus.zoom.us/j/7434726386'); -- Marketing Analytics

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(3300003, 'https://csus.zoom.us/j/1734354365'); -- Computer Forensics

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(3300005, 'https://csus.zoom.us/j/6377215705'); -- Critical Thinking

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(3300009, 'https://csus.zoom.us/j/4466762029'); -- Argumentation

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(3300011, 'https://csus.zoom.us/j/9812554034'); -- Principles Of Marketing

/* Create InPersonCourses */
-- CourseNo : 3300001 - Marketing Analytics
-- CourseNo : 3300002 - Intro to Prob Theory
-- CourseNo : 3300003 - Computer Forensics
-- CourseNo : 3300004 - Combinatorics
-- CourseNo : 3300005 - Critical Thinking
-- CourseNo : 3300006 - Leadership and Management
-- CourseNo : 3300007 - Nursing Care Of Adults
-- CourseNo : 3300008 - Microbiology
-- CourseNo : 3300009 - Argumentation
-- CourseNo : 3300010 - Operations Management
-- CourseNo : 3300011 - Principles Of Marketing
-- CourseNo : 3300012 - Investments
-- CourseNo : 3300013 - Sustainability Business
-- CourseNo : 3300014 - Venture Growth Strategies
-- CourseNo : 3300015 - Corporate Entrepreneurship

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300001, 101, 'SQU', '9:00 am'); -- 3300001 - Marketing Analytics

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300002, 101, 'SQU', '10:00 am'); -- 3300002 - Intro to Prob Theory

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300003, 101, 'SQU', '11:00 am'); -- 3300003 - Computer Forensics

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300004, 202, 'SQU', '10:00 am'); -- 3300004 - Combinatorics

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300005, 202, 'SQU', '2:00 pm'); -- 3300005 - Critical Thinking

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300006, 202, 'SQU', '9:00 pm'); -- 3300006 - Leadership and Management

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300007, 1001, 'RVR', '11:30 am'); -- 3300007 - Nursing Care Of Adults

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300008, 1001, 'RVR', '1:30 am'); -- 3300008 - Microbiology

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300009, 1001, 'RVR', '1:30 pm'); -- 3300009 - Argumentation

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300010, 2002, 'RVR', '12:00 pm'); -- 3300010 - Operations Management

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300011, 2002, 'RVR', '2:00 pm'); -- 3300011 - Principles Of Marketing

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300012, 2002, 'RVR', '7:00 pm'); -- 3300012 - Investments

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300013, 3003, 'RVR', '8:00 am'); -- 3300013 - Sustainability Business

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300014, 3003, 'RVR', '5:00 pm'); -- 3300014 - Venture Growth Strategies

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(3300015, 3003, 'RVR', '7:00 pm'); -- 3300015 - Corporate Entrepreneurship
