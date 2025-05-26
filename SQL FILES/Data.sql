Use DBProject;

Select * from USERS;
Select * from ADMINISTRATOR;
Select * from DEPARTMENT;
Select * from DEGREE;
Select * from CAMPUS;
Select * from SEMESTER;
Select * from BATCH;
Select * from GRADES;
Select * from FACULTY;
Select * from FACULTY_COURSES;
Select * from COURSES;
Select * from SECTION;
Select * from STUDENT;
Select * from STUDENT_DEGREE;
Select * from STUDENT_SEMESTER;
Select * from STUDENT_COURSES;
Select * from STUDENT_SECTION;
Select * from ATTENDANCE;
--Select * from EVALUATION;
--Select * from FEEDBACK;
--Select * from MARKS_DISTRIBUTION;


--DATA INSERTION
GO
BULK INSERT dbo.Users
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\USERS.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.Administrator
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\ADMINS.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.CAMPUS
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\CAMPUS.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.DEPARTMENT
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\DEPARTMENTS.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.DEGREE
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\DEGREE.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.BATCH
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\BATCH.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.SEMESTER
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\SEMESTER.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.GRADES
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\GRADES.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.COURSES
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\COURSES.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.SECTION
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\SECTION.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.FACULTY
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\FACULTY.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.STUDENT
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\STUDENTS.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.STUDENT_COURSES
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\STUDENT_COURSE.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO


GO
BULK INSERT dbo.STUDENT_DEGREE
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\STUDENT_DEGREE.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.STUDENT_SECTION
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\STUDENT_SECTION.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.STUDENT_SEMESTER
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\STUDENT_SEMESTER.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO


GO
BULK INSERT dbo.FACULTY_COURSES
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\FACULTY_COURSE.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO

GO
BULK INSERT dbo.ATTENDANCE
FROM 'D:\FAST NUCES (CS)\Semester 4\Database Systems\Theory\DP Project\Data Files\ATTENDANCE.csv '
WITH(FORMAT='CSV', FIRSTROW=2,  CODEPAGE='65001')
GO
