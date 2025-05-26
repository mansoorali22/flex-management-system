<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssignCourses.aspx.cs" Inherits="AssignCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllocateCourse.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<script runat="server">

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Flex | Admin </title>

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
        <p> <a href="Home.aspx">Home</a> </p>
        <p> <a href="Attendance.aspx">Assign Courses</a> </p>
        <p> <a href="Marks.aspx">Allocate Course</a> </p>
        <p> <a href="#">Assign Section</a> </p>
        <p> <a href="Feedback.aspx">Generate Course Report</a> </p>
        <p> <a href="Feedback.aspx"> Generate Student Section</a> </p>
        <p> <a href="Feedback.aspx"> Generate Course Allocation Report</a> </p>

      </div>

      <div class="home">

          <div id="PersonalInformation">
     
                <div class="title">
                     <h2>Assign Courses&nbsp;&nbsp;
                     </h2>
                     <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Faculty Name:
                         <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="FacultyName" DataTextField="FULLNAME" DataValueField="FULLNAME" AutoPostBack="True">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="FacultyName" runat="server" ConnectionString="<%$ ConnectionStrings:DBProjectConnectionString2 %>" ProviderName="<%$ ConnectionStrings:DBProjectConnectionString2.ProviderName %>" SelectCommand="SELECT USERS.FULLNAME
FROM USERS
INNER JOIN FACULTY ON F_ID = U_ID"></asp:SqlDataSource>
&nbsp;</h2>
                     <h2>&nbsp;&nbsp;&nbsp;&nbsp; Course&nbsp;
                         <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="CourseCode" DataTextField="CCODE" DataValueField="CCODE" AutoPostBack="True">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="CourseCode" runat="server" ConnectionString="<%$ ConnectionStrings:DBProjectConnectionString2 %>" SelectCommand="SELECT CCODE
FROM COURSES"></asp:SqlDataSource>
                     &nbsp;
                         <asp:Button ID="Button1" runat="server" Text="Button" />
                     </h2>
                </div>

                &nbsp;<div class="content">

                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
               <%--     <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2">
                    </asp:GridView>--%>
                            <br />


                </div>
          </div>
         
      </div>






   
     </div>


   
     </form>
</body>
</html>
