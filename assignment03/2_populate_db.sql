/*Creating data for tables Student, TA, Course, Enrolled, Instructor, Classroom, OnlineCourse, InPersonCourse */*/

/* Create Students */

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(862494318,'Haruhi Fujioka','7098 Prince Ave','haruhi_fujioka@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(539991337,'Tamaki Suoh','743 Arlington Lane','tamaki_suoh@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(567556659,'Kyoya Ootori','756 Pennington Road','kyoya_ootori@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(158901162,'Mitsukuni Haninozuka','142 Old Vernon St','mitsukuni_nozuka@hostclub.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(540915327,'Takashi Morinozuka','9245 Pineknoll Ave','takashi_nozuka@hostclub.com');

/* Create TAs */

INSERT INTO TA
(SSN, Salary)
VALUES
(567556659, 10000);

INSERT INTO TA
(SSN, Salary)
VALUES
(158901162, 20000);

INSERT INTO TA
(SSN, Salary)
VALUES
(540915327, 30000);

/* Create Courses */

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(12345, 'ADV DB MGT Systems', 90, 111111111, 567556659);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(23456, 'Data WHS & Mining', 3, 222222222, 567556659);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(34567, 'INTRO to PROB Theory', 33, 333333333, 158901162);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(45678, 'Computer Forensics', 23, 444444444, 158901162);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(67890, 'DB MGMT Systems', 63, 111111111, 540915327);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(78901, 'INTRO MATH STATS', 39, 333333333, 540915327);

/* Create Enrolled Courses */

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(290937023, 12345, 'A');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(782438106, 23456, 'F');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(996958247, 34567, 'C');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(156836151, 45678, 'D');

INSERT INTO Enrolled
(SSN, CourseNo, GRADE)
VALUES
(776792013, 67890, 'A');


/* Create Instructors */

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 111111111, 'Ying Jin');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 222222222, 'Anna Baynes');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 333333333, 'Xiaoyan Sun');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 555555555, 'Haiquan Chen');

INSERT INTO Instructor
(Title, InstructorID, InstructorName)
VALUES
('Professor', 66666666, 'Herbert Mayer');


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
(12345, 'https://csus.zoom.us/j/97924806971');

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(23456, 'https://csus.zoom.us/j/7043055709');

INSERT INTO OnlineCourse
(CourseNo, URL)
VALUES
(45678, 'https://csus.zoom.us/j/99963148416');


/* Create InPersonCourses */

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(34567, 202, 'SQU', '9:00 am');

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(56789, 202, 'SQU', '12:00 pm');

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(67890, 101, 'RVR', '1:30 am');

INSERT INTO InPersonCourse
(CourseNo, RoomNo, Building, ClassTime)
VALUES
(78901, 101, 'RVR', '2:00 pm');
