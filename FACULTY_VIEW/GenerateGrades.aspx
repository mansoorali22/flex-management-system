<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenerateGrades.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Flex | Faculty</title>
    <link rel="stylesheet" href="StyleSheet.css" />
    <link rel="icon" href="/Images/flex-tlogo.png" type="image/icon type" />
</head>
<body>
     <form id="form1" runat="server">
     
     <div class="body">


     <div class="header">
          <img src="/Images/flex-logo-blue.png"/>  
      </div>

      <div class="nav">
        <p> <a href="/FACULTY_VIEW/Home.aspx">Home</a> </p>
        <p> <a href="/FACULTY_VIEW/MarksDistribution.aspx">Marks Distribution</a> </p>
        <p> <a href="/FACULTY_VIEW/ManageAttendance.aspx">Manage Attendance</a> </p>
        <p> <a href="/FACULTY_VIEW/ManageEvaluations.aspx">Manage Evaluations</a> </p>
        <p> <a href="#"> Generate Grades</a> </p>
        <p> <a href="/FACULTY_VIEW/GenerateReports.aspx"> Generate Reports</a> </p>

      </div>

      <div class="home">

          <div id="PersonalInformation">
     
                <div class="title">
                     <h2>Generate Grades</h2>
                        <h4>Course: </h4>
                        
                    <div class="selectCourse">

                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="select CCODE from FACULTY_COURSES 
join COURSES on COURSE_ID = COURSES.C_ID
join FACULTY on FACULTY_ID = FACULTY.F_ID
join USERS on USERS.U_ID = F_ID 
where EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc);"></asp:SqlDataSource>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CCODE" DataValueField="CCODE" CssClass="selectCourse" AutoPostBack="true">
                         </asp:DropDownList>
                    </div>

                        <h5>Section: </h5>
                    <div class="selectCourse">

                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="SECNAME" DataValueField="SECNAME" CssClass="selectCourse" Height="30px" AutoPostBack="true">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="select SECNAME from SECTION
join COURSES on COURSES.C_ID = SECTION.COURSE_ID
join FACULTY on FAC_ID = FACULTY.F_ID
join USERS on USERS.U_ID = F_ID 
where EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc);"></asp:SqlDataSource>
                        </div>
                </div>

                <div class="content2" id="cont2" runat="server">
                     
                    <div>
                      <p>
                     <asp:Button ID="Button2" runat="server"  Text="Generate" onClick="GenerateButton_Click" BackColor="#01247D" Font-Size="17px" ForeColor="White" />
                    </p>
                    </div>
                    

                    <div class="gridRep">
                        <asp:GridView ID="GridView1" runat="server" CssClass="custom-grid"></asp:GridView>
                        <asp:GridView ID="GridView2" runat="server" CssClass="grid2"></asp:GridView>


                    </div>
                </div>

                   
          </div>
         
      </div>


     </div>

   
     </form>
</body>
</html>
