<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="_Default" %>

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
        <p> <a href="Home.aspx">Home</a> </p>
        <p> <a href="#">Attendance</a> </p>
        <p> <a href="Marks.aspx">Marks</a> </p>
        <p> <a href="Transcript.aspx">Transcript</a> </p>
        <p> <a href="Feedback.aspx">Feedback</a> </p>


      </div>

      <div class="home">

          <div id="courses">

              <div id="coursesName">
                  <h2> Courses </h2>
                    
                  <div class="Cmenu" role="menu">
                  <asp:Menu ID="Menu1" runat="server" ItemWrap="True" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal">
                          <DynamicMenuItemStyle CssClass="ParentMenu" />
    <DynamicHoverStyle CssClass="ParentMenuHover" />
    <DynamicMenuStyle CssClass="ParentMenu" />
                       <DynamicItemTemplate>
                           <%# Eval("Text") %>
                       </DynamicItemTemplate>
                       <LevelMenuItemStyles>  
                            <asp:MenuItemStyle CssClass="ParentMenu" />  
                           
                       </LevelMenuItemStyles>  

                  </asp:Menu>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                  </div>

              </div>

              <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

          <div  id="cont3" runat="server">


          </div>

          </div> 

          
         
      </div>






   
     </div>


   
     </form>


   
</body>
</html>
