Use DBProject;

--Select * from USERS;
--Select * from ADMINISTRATOR;
--Select * from DEPARTMENT;
--Select * from DEGREE;
--Select * from CAMPUS;
--Select * from SEMESTER;
--Select * from BATCH;
--Select * from GRADES;
--Select * from FACULTY;
--Select * from FACULTY_COURSES;
--Select * from COURSES;
--Select * from SECTION;
--Select * from STUDENT;
--Select * from STUDENT_DEGREE;
--Select * from STUDENT_SEMESTER;
--Select * from STUDENT_COURSES;
--Select * from ATTENDANCE;
--Select * from EVALUATION;
--Select * from FEEDBACK;
--Select * from MARKS_DISTRIBUTION;

--Queries for Admin Interface
------------------------------------------------------------
------------------------------------------------------------
Create Procedure Course_Report @Sem varchar (255)
As begin
Select S.SNAME, C.CCODE, C.CNAME , Credits 
from Courses C inner join SEMESTER S on S.SEM_ID = C.SEMESTER_ID
where SName = @Sem;
End

Exec Course_Report @Sem= 'Fall 2019';
------------------------------------------------------------

Create Procedure Students_Section @Sec Varchar (8)
As begin
Select SECTION.SECNAME, STUDENT.ROLL_NO, USERS.FULLNAME AS NAME 
from Users  inner join Student on USERS.U_ID = STUDENT.S_ID 
INNER JOIN STUDENT_SECTION ON STUDENT_SECTION.STUDENT_ID = STUDENT.S_ID
inner join Section  on SECTION.Sec_ID = STUDENT_SECTION.Section_ID
where Section.SECNAME = @Sec
End


Exec Students_Section @Sec = 'SEC-1A'
------------------------------------------------------------

Create Procedure Course_Allocation_Report @Course varchar (255)
As begin
Select C.CCODE, C.CNAME, C.CREDITS, S.SECNAME, U.FULLNAME AS NAME, F.COORDINATOR 
from  FACULTY F inner join USERS U on U.U_ID = F.F_ID
inner join FACULTY_COURSES FC on FC.FACULTY_ID = F.F_ID
INNER JOIN COURSES C ON C.C_ID = FC.COURSE_ID
inner join SECTION S on S.COURSE_ID = FC.COURSE_ID
where C.CNAME = @Course
End

Exec Course_Allocation_Report @Course = 'Programming Fundamentals'

------------------------------------------------------------
------------------------------------------------------------
--Queries for Faculty Interface
------------------------------------------------------------
------------------------------------------------------------
Create Procedure FacultyAttendance_Report @Email varchar (255), @Code varchar(255)
As begin
SELECT DISTINCT S.ROLL_NO, U2.FULLNAME, SEC.SECNAME, COUNT(CASE WHEN A.PRESENCE = 'P' THEN 1 END) AS TOTAL_PRESENCE , 100.0 * COUNT(CASE WHEN A.PRESENCE = 'P' THEN 1 END) / COUNT(*) AS TOTAL_PERCENTAGE
FROM ATTENDANCE A
INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
INNER JOIN SECTION SEC ON SEC.COURSE_ID = C.C_ID
INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID
INNER JOIN FACULTY_COURSES FC ON FC.COURSE_ID = SC.COURSE_ID 
INNER JOIN USERS U1 ON U1.U_ID = FC.FACULTY_ID
INNER JOIN USERS U2 ON U2.U_ID = S.S_ID
WHERE U1.EMAIL = 'kashif.munir@nu.edu.pk' AND C.CCODE = 'CS1000'
GROUP BY S.ROLL_NO, U2.FULLNAME, SEC.SECNAME
End

drop procedure FacultyAttendance_Report


Exec FacultyAttendance_Report @Email = 'kashif.munir@nu.edu.pk', @Code = 'CS1000'
-------------------------------------------------------------
Create Procedure GradeReport @Code varchar (255)
As begin
SELECT S.ROLL_NO, U.FULLNAME, SEC.SECNAME, G.TMARKS, G.GRADE
FROM COURSES C
INNER JOIN STUDENT_COURSES SC ON SC.COURSE_ID = C.C_ID
INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID
INNER JOIN USERS U ON U.U_ID = S.S_ID
INNER JOIN SECTION SEC ON SEC.COURSE_ID = SC.COURSE_ID
INNER JOIN GRADES G ON G.G_ID = SC.GRADE_ID
WHERE C.CCODE = @Code
End


Exec GradeReport @Code = 'CS1000'
------------------------------------------------------------
Create Procedure GradeCount @Sec varchar (255)
As begin
SELECT G.GRADE, COUNT(*) AS COUNT
FROM
(
  SELECT G.GRADE
  FROM COURSES C
  INNER JOIN STUDENT_COURSES SC ON SC.COURSE_ID = C.C_ID
  INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID
  INNER JOIN USERS U ON U.U_ID = S.S_ID
  INNER JOIN SECTION SEC ON SEC.COURSE_ID = SC.COURSE_ID
  INNER JOIN GRADES G ON G.G_ID = SC.GRADE_ID
  WHERE SEC.SECNAME = 'SEC-1A'
) AS G
GROUP BY G.GRADE;
End


Exec GradeCount @Sec = 'SEC-1A'
------------------------------------------------------------
----------------------------------------------------------
--TO GET SECTION ID FROM SECTION NAME
SELECT  S.SEC_ID
FROM SECTION S
WHERE S.SECNAME = 'SEC-1A'
--TO GET COURSE ID FROM COURSE CODE
SELECT C.C_ID
FROM COURSES C
WHERE C.CCODE = 'CS1000'

--TO GET LATEST LECTURE NO OF COURSE, ADD + 1 FOR THE NEXT LECTURE
SELECT COUNT(A.LECTURE_NO)
FROM ATTENDANCE A
INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
WHERE C.CCODE = 'CS1000'
--TO DISPLAY ROLL NO, NAME, SECTION OF COURSE
Select S.ROLL_NO, U.FULLNAME AS NAME, SEC.SECNAME
from USERS U
INNER JOIN STUDENT S on U.U_ID = S.S_ID 
INNER JOIN STUDENT_COURSES SC ON SC.STUDENT_ID = S.S_ID
INNER JOIN ATTENDANCE
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
INNER JOIN SECTION SEC ON SEC.COURSE_ID = SC.COURSE_ID
WHERE C.CCODE = 'CS1000'

----------------------------------------------------------
--QUERY TO GET SECTION ID
SELECT SEC_ID
FROM SECTION
WHERE SECNAME = 'SEC-1A'
--QUERY TO GET COURSE ID
SELECT C_ID
FROM COURSES
WHERE CCODE = 'CS1000'
------------------------------------------------------------
------------------------------------------------------------
--Queries for Student Interface
------------------------------------------------------------
------------------------------------------------------------
Create Procedure Personal_Information @Email varchar (255)
As begin
SELECT USERS.FULLNAME, USERS.EMAIL, USERS.CNIC, USERS.DOB, USERS.GENDER, USERS.PHONENO
FROM USERS
WHERE USERS.EMAIL = @Email
End

Exec Personal_Information @Email = 'i210001@nu.edu.pk'
-------------------------------------------------------------
Create Procedure University_Information @Email varchar (255)
As begin
SELECT DISTINCT S.ROLL_NO, B.BNAME, C.CAMNAME, D.DNAME
FROM USERS U
INNER JOIN STUDENT S ON S.S_ID = U.U_ID
INNER JOIN DEGREE D ON D.D_ID = S.SDEGREE
INNER JOIN CAMPUS C ON C.CAMPUS_ID = S.SCAMPUS
INNER JOIN BATCH B ON B.B_ID = S.SBATCH
WHERE U.EMAIL = @Email
End

Exec University_Information @Email = 'i210001@nu.edu.pk'
-------------------------------------------------------------
Create Procedure Semester_Information @Email varchar (255)
As begin
SELECT SEM.SNAME, SS.SGPA
FROM USERS U
INNER JOIN STUDENT S ON S.S_ID = U.U_ID
INNER JOIN STUDENT_SEMESTER SS ON SS.STU_ID = S.S_ID
INNER JOIN SEMESTER SEM ON SEM.SEM_ID = SS.SEMESTER_ID
WHERE U.EMAIL = @Email
End


Exec Semester_Information @Email = 'i210001@nu.edu.pk'
-------------------------------------------------------------
Create Procedure StudentAttendance_Report @Email varchar (255), @Code varchar(255)
As begin
SELECT A.LECTURE_NO, A.LDATE, A.DURATION, A.PRESENCE
FROM ATTENDANCE A
INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID
INNER JOIN USERS U ON U.U_ID = S.S_ID
WHERE U.EMAIL = @Email and C.CCODE = @Code
ORDER BY LDATE;
End

Exec StudentAttendance_Report @Email = 'i210001@nu.edu.pk', @Code = 'CS1000'
-------------------------------------------------------------
Create Procedure StudentAttendancePercentage @Email varchar (255)
As begin
SELECT C.CNAME,
  COUNT(CASE WHEN A.PRESENCE = 'P' THEN 1 END) AS PRESENCE,
  COUNT(*) AS TOTAL_COUNT,
  100.0 * COUNT(CASE WHEN A.PRESENCE = 'P' THEN 1 END) / COUNT(*) AS TOTAL_PERCENTAGE
FROM ATTENDANCE A
INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID
INNER JOIN USERS U ON U.U_ID = S.S_ID
WHERE U.EMAIL = @Email
GROUP BY C.CNAME
End
DROP PROCEDURE StudentAttendancePercentage

Exec StudentAttendancePercentage @Email = 'i210001@nu.edu.pk'
-------------------------------------------------------------
Create Procedure StudentTranscript @Email varchar (255), @Sem varchar (255)
As begin
SELECT C.CCODE, C.CNAME, SEC.SECNAME, C.CREDITS, G.GRADE, G.GPOINTS, C.CTYPE
FROM USERS U
INNER JOIN STUDENT S ON S.S_ID = U.U_ID
INNER JOIN STUDENT_COURSES SC ON SC.STUDENT_ID = S.S_ID 
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
INNER JOIN GRADES G ON G.G_ID = SC.GRADE_ID
INNER JOIN SECTION SEC ON SEC.COURSE_ID = C.C_ID
INNER JOIN SEMESTER SEM on SEM.SEM_ID = C.SEMESTER_ID
WHERE U.EMAIL = @Email AND SEM.SNAME = @Sem
End


Exec StudentTranscript @Email = 'i210001@nu.edu.pk', @Sem = 'Fall 2019'
-------------------------------------------------------------
------------------------------------------------------------
-------------------------------------------------------------
SELECT COUNT(MARK_ID)
FROM MARKS_DISTRIBUTION
-------------------------------------------------------------
--Academic Office are users which authority to offer courses, manage
--students by assigning courses to the registered students
--student can only take 6 courses in one semester
--QUERIES FOR OFFER COURSES
--Query to select student roll no
SELECT S.ROLL_NO
FROM STUDENT S
--Query to Select semester for student
SELECT SNAME
FROM SEMESTER
--Query to show offered courses in semester
Create Procedure AssignCourse @Sem varchar (255)
As begin
SELECT C.CCODE, C.CNAME, C.CREDITS, C.CTYPE, C.PREREQ
FROM COURSES C
INNER JOIN SEMESTER S ON S.SEM_ID = C.SEMESTER_ID
WHERE S.SNAME = @Sem
END

exec AssignCourse @sem = 'Fall 2019'

--Query to check student registered course
SELECT COUNT(SC_ID)
FROM STUDENT_COURSES SC
INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID
WHERE S.ROLL_NO = 'i210001'
-------------------------------------------------------------
--QUERIES FOR ALLOCATING COURSE
--Query to select faculty name
SELECT USERS.FULLNAME
FROM USERS
INNER JOIN FACULTY ON F_ID = U_ID
--Query to select course name to allocate it to faculty
SELECT CCODE
FROM COURSES
--Query to show registered students in that course
SELECT S.ROLL_NO, U.FULLNAME
FROM STUDENT S
INNER JOIN USERS U ON U.U_ID = S.S_ID
INNER JOIN STUDENT_COURSES SC ON SC.STUDENT_ID = S.S_ID
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
WHERE C.CCODE = 'CS1000'
