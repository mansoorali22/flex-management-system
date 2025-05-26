<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageAttendance.aspx.cs" Inherits="FACULTY_VIEW_ManageAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Flex | Faculty</title>
    <link rel="stylesheet" href="StyleSheet.css" />
    <link rel="icon" href="/Images/flex-tlogo.png" type="image/icon type" />

    <script>
    window.addEventListener('DOMContentLoaded', function() {
      var today = new Date().toISOString().split('T')[0];
        document.getElementById('SelectDate').value = today;
    });
    </script>

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
        <p> <a href="#">Manage Attendance</a> </p>
        <p> <a href="/FACULTY_VIEW/ManageEvaluations.aspx">Manage Evaluations</a> </p>
        <p> <a href="/FACULTY_VIEW/GenerateGrades.aspx"> Generate Grades</a> </p>
        <p> <a href="/FACULTY_VIEW/GenerateReports.aspx"> Generate Reports</a> </p>

      </div>

      <div class="home">

          <div id="PersonalInformation">
     
                <div class="title">
                     <h2>Manage Attendance </h2>

                        <h6>Course: </h6>
                        
                    <div class="selectCourse">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="select CCODE from FACULTY_COURSES 
join COURSES on COURSE_ID = COURSES.C_ID
join FACULTY on FACULTY_ID = FACULTY.F_ID
join USERS on USERS.U_ID = F_ID 
where EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc);"></asp:SqlDataSource>
                         <asp:DropDownList ID="List1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CCODE" DataValueField="CCODE" CssClass="selectCourse" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                         </asp:DropDownList>
                    </div>

                        <h5>Section: </h5>

                    <div class="selectCourse">

                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="SECNAME" DataValueField="SECNAME" CssClass="selectCourse" Height="30px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="select SECNAME from SECTION
join COURSES on COURSES.C_ID = SECTION.COURSE_ID
join FACULTY on FAC_ID = FACULTY.F_ID
join USERS on USERS.U_ID = F_ID 
where EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc);"></asp:SqlDataSource>
                    </div>

                        <h5>Date: </h5>

                    <div class="selectCourse"> 
                        <input type="date" id="SelectDate" name="Date"  runat="server" />


                    </div>



                </div>

                <div class="content" id="cont3" runat="server">

                
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowSorting="True" CssClass="grid2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="641px" AutoPostBack="true">
    <Columns>
        <asp:BoundField DataField="ROLL_NO" HeaderText="Roll No" ReadOnly="true" />
        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="true" />
       <asp:TemplateField HeaderText="Presence">
    <ItemTemplate>
        <asp:Label ID="lblPresence" runat="server" Text='<%# Bind("Presence") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:DropDownList ID="ddlPresence" runat="server" SelectedValue='<%# Bind("Presence") %>' AppendDataBoundItems="true">
            <asp:ListItem Text="P" Value="P" />
            <asp:ListItem Text="A" Value="A" />
            <asp:ListItem Text="L" Value="L" />
        </asp:DropDownList>
    </EditItemTemplate>
</asp:TemplateField>

        <asp:CommandField ShowEditButton="true" EditText="Edit" CancelText="Cancel" UpdateText="Update" />
    </Columns>
</asp:GridView>


                </div>

               <p>
                     <asp:Button ID="Button1" runat="server"  Text="Save" onClick="SaveButton_Click" BackColor="#01247D" Font-Size="17px" ForeColor="White" />
                    </p>
          </div>

          

         
      </div>



                    

   
     </div>


   
     </form>
</body>
</html>
