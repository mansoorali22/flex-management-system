<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenerateReports.aspx.cs" Inherits="_Default" %>

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
        <p> <a href="/FACULTY_VIEW/GenerateGrades.aspx"> Generate Grades</a> </p>
        <p> <a href="/FACULTY_VIEW/GenerateReports.aspx"> Generate Reports</a> </p>

      </div>

      <div class="home">

          <div id="PersonalInformation">
     
                <div class="title">
                     <h2>Reports</h2>
                  

                </div>

                <div class="content2" id="cont2" runat="server">
                     
                    <div class="buttons">

                     <p>
                     <asp:Button   class="button3" runat="server"  Text="Attendance Report" onClick="AttReport_Click" BackColor="#01247D" Font-Size="17px" ForeColor="White" />
                     </p>

                     <p>
                     <asp:Button class="button3" runat="server"  Text="Evaluation Report" onClick="EvalReport_Click" BackColor="#01247D" Font-Size="17px" ForeColor="White" />
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
