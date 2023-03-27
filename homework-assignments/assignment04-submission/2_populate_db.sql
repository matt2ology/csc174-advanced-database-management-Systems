/* Creating data for tables Student, TA, Course, Enrolled, Instructor, Classroom, OnlineCourse, InPersonCourse */
/*  A,  B,  C,  D,  E,  F,  G,  H,  I,  J,  K,  L,  M,  N,  O,  P,  Q,  R,  S,  T,  U,  V,  W,  X,  Y,  Z */
/* 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 */

/* UID
 TA (SSN) - 9 chars : 21xxxxxxx
 Student (SSN) - 9 chars : 19xxxxxxx
 Instructor (InstructorID) - 10 chars : 09xxxxxxxx
 Course (CourseNo) - 7 chars : 03xxxxxxx
 OnlineCourse (CourseNo) - 7 chars : 03xxxxxxx
 InPersonCourse (CourseNo) - 7 chars : 03xxxxxxx
 Enrolled (SSN, CourseNo) - 9 chars + 7 chars : xxxxxxxxx
 Classroom (RoomNo, Building) - 2 chars + 10 chars : xxxxxxxxx
 */

/* Create Students */

/* Host Club Members */

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000001,'Haruhi Fujioka','7098 Prince Ave','haruhi_fujioka@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000002,'Tamaki Suoh','743 Arlington Lane','tamaki_suoh@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000003,'Kyoya Ootori','756 Pennington Road','kyoya_ootori@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000004,'Mitsukuni Haninozuka','142 Old Vernon St','mitsukuni_nozuka@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000005,'Takashi Morinozuka','9245 Pineknoll Ave','takashi_nozuka@hostclub.com');

/* BLACK EAGLES */

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000006,'Ferdinand von Aegir','123 House Aegir','ferdinand_von_aegir@aegir.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000007,'Bernadetta von Varley','123 House Varley','bernie@varley.com');

/* Blue Lions */

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000008,'Felix Hugo Fraldarius','123 House Fraldarius','felix@fraldarius.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000009,'Mercedes von Bartels','321 Garreg Mach Monastery','mercie@garregmach.com');

/* Golden Deer */

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000010,'Lysithea von Ordelia','9245 House Ordelia','lys@ordelia.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000011,'Marianne von Edmund','8254 House Edmund','Marianne@Edmund.com');

/* Three Houses Leaders */

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000012,'Edelgard von Hresvelg','8756 Enbarr','flame_emperor@adrestian.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000013,'Dimitri Alexandre Blaiddyd','1462 Garreg Mach Monastery','the_tempest_king@fhirdiad.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000014,'Claude von Riegan','4592 Leicester Federation','claude@leicester.com');

/* Create TAs */

INSERT INTO TA
(SSN, Salary)
VALUES
(190000012, 30000);

INSERT INTO TA
(SSN, Salary)
VALUES
(190000013, 20000);

INSERT INTO TA
(SSN, Salary)
VALUES
(190000014, 10000);

/* Create Courses */

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(0300001, 'ADV DB MGT Systems', 90, 0900000001, 190000014);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(0300002, 'Data WHS & Mining', 3, 0900000002, 190000014);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(0300003, 'INTRO to PROB Theory', 33, 0900000003, 190000013);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(0300004, 'Computer Forensics', 23, 444444444, 190000013);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(0300005, 'DB MGMT Systems', 63, 0900000001, 190000012);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(0300006, 'INTRO MATH STATS', 39, 0900000003, 190000012);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(0300007, 'Combinatorics', 39, 0900000003, 190000012);

/* Create Enrolled Courses */

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(290937023, 0300001, 'A');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(782438106, 0300002, 'F');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(996958247, 0300003, 'C');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(156836151, 0300004, 'D');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(776792013, 0300005, 'A');


/* Create Instructors */

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000001, 'Byleth Eisner');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000002, 'Hanneman von Essar');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000003, 'Manuela Casagranda');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000004, 'Shamir Nevrand');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 0900000005, 'Cassandra Charon');


/* Create Classrooms */

INSERT INTO Classroom
(RoomNo, Building, Capacity)
VALUES
(202, 'SQU', 30);

INSERT INTO Classroom
(RoomNo, Building, Capacity)
VALUES
(101, 'RVR', 30);


/* Create OnlineCourses */

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(0300001, 'https://csus.zoom.us/j/97924806971');

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(0300002, 'https://csus.zoom.us/j/7043055709');

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(0300003, 'https://csus.zoom.us/j/99963148416');


/* Create InPersonCourses */

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(0300004, 202, 'SQU', '9:00 am');

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(0300005, 202, 'SQU', '12:00 pm');

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(0300006, 101, 'RVR', '1:30 am');

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(0300007, 101, 'RVR', '2:00 pm');
