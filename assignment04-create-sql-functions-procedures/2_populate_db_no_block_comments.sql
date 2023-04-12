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

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000006,'Ferdinand von Aegir','123 House Aegir','ferdinand_von_aegir@aegir.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000007,'Bernadetta von Varley','123 House Varley','bernie@varley.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000008,'Dorothea Arnault','941 Mittelfrank Opera Company','dorothea@mittelfrank_opera.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000009,'Felix Hugo Fraldarius','123 House Fraldarius','felix@fraldarius.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000010,'Mercedes von Bartels','321 Garreg Mach Monastery','mercie@garregmach.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000011,'Annette Fantine Dominic','572 House Dominic','annette@dominic.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000012,'Lysithea von Ordelia','9245 House Ordelia','lys@ordelia.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000013,'Marianne von Edmund','8254 House Edmund','Marianne@Edmund.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000014,'Raphael Kirsten','8544 Leicester','the_beast@leicester.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(190000015,'Yuri Leclerc','8982 Rowe Ave','Yuri@ashen_wolves.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(200100001,'Claude von Riegan','4592 Leicester Federation','claude@leicester.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(200100002,'Dimitri Alexandre Blaiddyd','1462 Garreg Mach Monastery','the_tempest_king@fhirdiad.com');

INSERT INTO Student
(SSN, StudentName, Address, Email)
VALUES
(200100003,'Edelgard von Hresvelg','8756 Enbarr','flame_emperor@adrestian.com');

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

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300001, 'Marketing Analytics', 90, 0900000001, 200100001);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300002, 'Intro to Prob Theory', 33, 0900000001, 200100003);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300003, 'Computer Forensics', 23, 0900000001, 200100001);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300004, 'Combinatorics', 39, 0900000002, 200100002);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300005, 'Critical Thinking', 39, 0900000002, 200100003);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300006, 'Leadership and Management', 39, 0900000002, 200100003);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300007, 'Nursing Care Of Adults', 39, 0900000003, 200100002);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300008, 'Microbiology', 39, 0900000003, 200100002);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300009, 'Argumentation', 39, 0900000003, 200100001);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300010, 'Operations Management', 39, 0900000004, 200100002);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300011, 'Principles Of Marketing', 39, 0900000004, 200100001);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300012, 'Investments', 39, 0900000004, 200100003);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300013, 'Sustainability Business', 39, 0900000005, 200100001);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300014, 'Venture Growth Strategies', 39, 0900000005, 200100002);

INSERT INTO Course
(CourseNo, CourseName, NoOfStudents, InstructorID, TASSN)
VALUES
(3300015, 'Corporate Entrepreneurship', 39, 0900000005, 200100003);

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

/* TESTING - VALIDATING */

SELECT * FROM Classroom;
SELECT * FROM Course;
SELECT * FROM Enrolled;
SELECT * FROM InPersonCourse;
SELECT * FROM InPersonCourseView;
SELECT * FROM Instructor;
SELECT * FROM OnlineCourse;
SELECT * FROM OnlineCourseView;
SELECT * FROM Student_Grade_A;
SELECT * FROM Student;
SELECT * FROM TA_Course;
SELECT * FROM TA;
SELECT * FROM TAView;

SHOW TABLES; -- Expect 8 tables in total in the database

DESC Student;
DESC TA;
DESC Course;
DESC Enrolled;
DESC Instructor;
DESC Classroom;
DESC OnlineCourse;
DESC InPersonCourse;
