Use DB_Project;

------------------------------------------------------------
Create Procedure Course_Report @Sem varchar (255)
As begin
Select S.SNAME, C.CCODE, C.CNAME , Credits 
from Courses C inner join SEMESTER S on S.SEM_ID = C.SEMESTER_ID
where SName = @Sem;
End

Exec Course_Report @Sem= 'Fall 2019';
------------------------------------------------------------

Create Procedure Students_Section @Sec Varchar (5)
As begin
Select E.SECNAME, S.ROLL_NO, U.FName + ' ' + U.LName AS Name 
from Users U inner join Student S on U.U_ID = S.S_ID 
inner join  Section E on E.Sec_ID = S.Section_ID
where E.SECNAME = @Sec
End

Exec Students_Section @Sec = CS11
------------------------------------------------------------

Create Procedure Course_Allocation_Report @Course varchar (255)
As begin
Select C.CCODE, C.CNAME, C.CREDITS, E.SECNAME, U.FNAME + ' ' + U.LNAME As Name, F.COORDINATOR 
from  FACULTY F inner join USERS U on U.U_ID = F.F_ID
inner join COURSES C on C.C_ID = F.COURSE_ID
inner join SECTION E on E.COURSE_ID = C.C_ID
where C.CNAME = @Course
End

Exec Course_Allocation_Report @Course = 'Physics I'
-------------------------------------------------------------