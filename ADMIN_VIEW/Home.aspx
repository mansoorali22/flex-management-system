<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

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
        <p> <a href="Attendance.aspx">Marks Distribution</a> </p>
        <p> <a href="Marks.aspx">Manage Attendance</a> </p>
        <p> <a href="#">Manage Evaluations</a> </p>
        <p> <a href="Feedback.aspx"> Generate Grades</a> </p>
        <p> <a href="Feedback.aspx"> Generate Reports</a> </p>

      </div>

      <div class="home">

          <div id="PersonalInformation">
     
                <div class="title">
                     <h2>Personal Information</h2>
                </div>

                <div class="content">


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT USERS.FULLNAME, USERS.EMAIL, USERS.CNIC, USERS.DOB, USERS.GENDER, USERS.PHONENO
FROM USERS
WHERE USERS.EMAIL =(select top 1 email from loggedInSucessfully order by loggedTime desc)"></asp:SqlDataSource>
                            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" OnPageIndexChanging="FormView1_PageIndexChanging" Width="725px">
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
                                <ItemTemplate>
                                    <b>Name:</b>
                                    <asp:Label ID="FULLNAMELabel" runat="server" Text='<%# Bind("FULLNAME") %>' />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Email:</b>
                                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                                    <br />
                                    <br />
                                    <b>CNIC:</b>
                                    <asp:Label ID="CNICLabel" runat="server" Text='<%# Bind("CNIC") %>' />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>DOB:</b>
                                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                                    <br />
                                    <br />
                                    <b>Gender:</b>
                                    <asp:Label ID="GENDERLabel" runat="server" Text='<%# Bind("GENDER") %>' />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<b> Contact: </b>
                                    <asp:Label ID="PHONENOLabel" runat="server" Text='<%# Bind("PHONENO") %>' />
                                    <br />

                                </ItemTemplate>
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:FormView>


                </div>
          </div>
         
      </div>






   
     </div>


   
     </form>
</body>
</html>
