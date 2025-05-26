<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Flex | Student</title>
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

       
         <p> 
             <%--<a href="#"> <img src="Images/home-svgrepo-com.svg" alt="Alternate Text" /></a>--%>
             <a href="#">  Home</a> 
         </p>
     

        <p>
            <%--<a href="#"> <img src="Images/scorecard-svgrepo-com (1).svg" alt="Alternate Text" /></a>--%>            
            <a href="/USER_VIEW/Attendance.aspx">Attendance</a>
        </p>
        <p>
            <%--<a href="#"> <img src="Images/evaluation-svgrepo-com (1).svg" alt="Alternate Text" /></a>--%>                        
            <a href="/USER_VIEW/Marks.aspx">Marks</a> 
        </p>
        <p>
            <%--<a href="#"> <img src="Images/diploma-svgrepo-com.svg" alt="Alternate Text" /></a>--%>            
            <a href="/USER_VIEW/Transcript.aspx">Transcript</a>
        </p>
        <p> 
            <%--<a href="#"> <img src="Images/feedback-like-rating-svgrepo-com.svg" alt="Alternate Text" /></a>--%>            
            <a href="/USER_VIEW/Feedback.aspx">Feedback</a> 
        </p>


      </div>

      <div class="home">

           <div id="UniversityInformation">
     
                <div class="title">
                     <h2>University Information</h2>
                </div>

                <div class="content">
                         <asp:FormView ID="FormView1" runat="server" CssClass="content" DataSourceID="SqlDataSource1" Height="109px" OnPageIndexChanging="FormView1_PageIndexChanging" Width="586px" GridLines="Horizontal">
                     <EditItemTemplate>
                         ROLL_NO:
                         <asp:TextBox ID="ROLL_NOTextBox" runat="server" Text='<%# Bind("ROLL_NO") %>' />
                         <br />
                         BNAME:
                         <asp:TextBox ID="BNAMETextBox" runat="server" Text='<%# Bind("BNAME") %>' />
                         <br />
                         CAMNAME:
                         <asp:TextBox ID="CAMNAMETextBox" runat="server" Text='<%# Bind("CAMNAME") %>' />
                         <br />
                         DNAME:
                         <asp:TextBox ID="DNAMETextBox" runat="server" Text='<%# Bind("DNAME") %>' />
                         <br />
                         <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </EditItemTemplate>
                     <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                     <HeaderStyle BackColor="#FF3300" />
                     <InsertItemTemplate>
                         ROLL_NO:
                         <asp:TextBox ID="ROLL_NOTextBox" runat="server" Text='<%# Bind("ROLL_NO") %>' />
                         <br />
                         BNAME:
                         <asp:TextBox ID="BNAMETextBox" runat="server" Text='<%# Bind("BNAME") %>' />
                         <br />
                         CAMNAME:
                         <asp:TextBox ID="CAMNAMETextBox" runat="server" Text='<%# Bind("CAMNAME") %>' />
                         <br />
                         DNAME:
                         <asp:TextBox ID="DNAMETextBox" runat="server" Text='<%# Bind("DNAME") %>' />
                         <br />
                         <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                         &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <b> Roll No: </b>
                         <asp:Label ID="ROLL_NOLabel" runat="server" Text='<%# Bind("ROLL_NO") %>' />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  <b>Batch: </b>
                         <asp:Label ID="BNAMELabel" runat="server" Text='<%# Bind("BNAME") %>' />
                         <br />
                         <br />
                         <b>Campus:</b>
                         <asp:Label ID="CAMNAMELabel" runat="server" Text='<%# Bind("CAMNAME") %>' />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Department:</b>
                         <asp:Label ID="DNAMELabel" runat="server" Text='<%# Bind("DNAME") %>' />
                         <br />
                     </ItemTemplate>
                     <RowStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                 </asp:FormView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT DISTINCT S.ROLL_NO, B.BNAME, C.CAMNAME, D.DNAME
FROM USERS U
INNER JOIN STUDENT S ON S.S_ID = U.U_ID
INNER JOIN DEGREE D ON D.D_ID = S.SDEGREE
INNER JOIN CAMPUS C ON C.CAMPUS_ID = S.SCAMPUS
INNER JOIN BATCH B ON B.B_ID = S.SBATCH
WHERE U.EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc);"></asp:SqlDataSource>
                </div>   


           </div>

           <div id="PersonalInformation">

                 <div class="title">
                 <h2>Personal Information</h2> 
                 </div>

                 <div class="content2">
                      <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2" CssClass="content" HorizontalAlign="Center" CellPadding="5" GridLines="Horizontal">
                  <EditItemTemplate>
                      FULLNAME:
                      <asp:TextBox ID="FULLNAMETextBox" runat="server" Text='<%# Bind("FULLNAME") %>' />
                      <br />
                      EMAIL:
                      <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                      <br />
                      CNIC:
                      <asp:TextBox ID="CNICTextBox" runat="server" Text='<%# Bind("CNIC") %>' />
                      <br />
                      DOB:
                      <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                      <br />
                      GENDER:
                      <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                      <br />
                      PHONENO:
                      <asp:TextBox ID="PHONENOTextBox" runat="server" Text='<%# Bind("PHONENO") %>' />
                      <br />
                      <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                      &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </EditItemTemplate>
                  <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  <InsertItemTemplate>
                      FULLNAME:
                      <asp:TextBox ID="FULLNAMETextBox" runat="server" Text='<%# Bind("FULLNAME") %>' />
                      <br />
                      EMAIL:
                      <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                      <br />
                      CNIC:
                      <asp:TextBox ID="CNICTextBox" runat="server" Text='<%# Bind("CNIC") %>' />
                      <br />
                      DOB:
                      <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                      <br />
                      GENDER:
                      <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                      <br />
                      PHONENO:
                      <asp:TextBox ID="PHONENOTextBox" runat="server" Text='<%# Bind("PHONENO") %>' />
                      <br />
                      <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                      &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </InsertItemTemplate>
                          <InsertRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  <ItemTemplate>
                      <b>Name:</b>
                      <asp:Label ID="FULLNAMELabel" runat="server" Text='<%# Bind("FULLNAME") %>' />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Email:</b>
                      <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>CNIC:</b>
                      <asp:Label ID="CNICLabel" runat="server" Text='<%# Bind("CNIC") %>' />
                      &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                      <b>DOB:</b>
                      <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Gender:</b>
                      <asp:Label ID="GENDERLabel" runat="server" Text='<%# Bind("GENDER") %>' />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Contact:</b>
                      <asp:Label ID="PHONENOLabel" runat="server" Text='<%# Bind("PHONENO") %>' />
                      <br />
                  </ItemTemplate>
                  <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:FormView>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT FULLNAME, EMAIL, CNIC, DOB, GENDER, PHONENO FROM USERS WHERE (EMAIL = (SELECT TOP (1) email FROM loggedInSucessfully ORDER BY loggedTime DESC))"></asp:SqlDataSource>
                 </div>

           </div>

           <div id="Attendance_Graph">
                <div class="title">
                 <h2>Attendance</h2> 
                 </div>

               <div class="content3">

                   <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource3" Width="1016px">
                       <Series>
                           <asp:Series Name="Series1" ChartType="Bar" XValueMember="CNAME" YValueMembers="TOTAL_PERCENTAGE"></asp:Series>
                       </Series>
                       <ChartAreas>
                           <asp:ChartArea Name="ChartArea1">
                               <AxisY Maximum="100">
                               </AxisY>
                               <AxisX LogarithmBase="3">
                               </AxisX>
                           </asp:ChartArea>
                       </ChartAreas>
                   </asp:Chart>

                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT C.CNAME,
  COUNT(CASE WHEN A.PRESENCE = 'P' THEN 1 END) AS PRESENCE,
  COUNT(*) AS TOTAL_COUNT,
  100.0 * COUNT(CASE WHEN A.PRESENCE = 'P' THEN 1 END) / COUNT(*) AS TOTAL_PERCENTAGE
FROM ATTENDANCE A
INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID
INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID
INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID
INNER JOIN USERS U ON U.U_ID = S.S_ID
WHERE U.EMAIL =  (select top 1 email from loggedInSucessfully order by loggedTime desc) 
GROUP BY C.CNAME"></asp:SqlDataSource>

               </div>

           </div>
      
           <div id="GPA_Graph">

                 <div class="title">
                 <h2>Semester GPA</h2> 
                 </div>

               <div class="content">

    
                   <asp:Chart ID="Chart1" runat="server" DataSourceID="gpaGraph" Width="972px">
                       <Series>
                           <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="SNAME" YValueMembers="SGPA">
                           </asp:Series>
                       </Series>
                       <ChartAreas>
                           <asp:ChartArea Name="ChartArea1">
                               <AxisY IsLogarithmic="True" LogarithmBase="4">
                                   <MajorGrid Interval="1" />
                                   <MinorGrid Enabled="True" Interval="1" />
                                   <MajorTickMark Interval="1" />
                                   <MinorTickMark Enabled="True" Interval="1" />
                               </AxisY>
                               <AxisX>
                                   <MajorGrid Enabled="False" />
                               </AxisX>
                           </asp:ChartArea>
                       </ChartAreas>
                   </asp:Chart>
                   <asp:SqlDataSource ID="gpaGraph" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT SEM.SNAME, SS.SGPA
FROM USERS U
INNER JOIN STUDENT S ON S.S_ID = U.U_ID
INNER JOIN STUDENT_SEMESTER SS ON SS.STU_ID = S.S_ID
INNER JOIN SEMESTER SEM ON SEM.SEM_ID = SS.SEMESTER_ID
WHERE U.EMAIL =  (select top 1 email from loggedInSucessfully order by loggedTime desc);"></asp:SqlDataSource>

    
               </div>

           </div>






                    <%-- HOME DIV CLOSED--%>
      </div>


                    <%--BODY DIV CLOSED--%>
    </div>

     </form>
</body>
</html>
