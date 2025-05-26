<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageEvaluations.aspx.cs" Inherits="_Default" %>

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
        <p> <a href="#">Manage Evaluations</a> </p>
        <p> <a href="/FACULTY_VIEW/GenerateGrades.aspx"> Generate Grades</a> </p>
        <p> <a href="/FACULTY_VIEW/GenerateReports.aspx"> Generate Reports</a> </p>

      </div>

      <div class="home">

          <div id="PersonalInformation">
     
                <div class="title">
                     <h2>Evaluations</h2>
                  

                </div>

                <div class="content2" id="cont2" runat="server">
                     
                  
                        
                    </div>
                    

                 
                </div>

                   
          </div>
         
      </div>


     </div>

   
     </form>
</body>
</html>
