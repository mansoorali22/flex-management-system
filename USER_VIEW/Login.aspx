<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <link rel="icon" href="/Images/flex-tlogo.png" type="image/icon type" />

</head>
<body class="BgBody">

    <div id="logo">

        <img src="/Images/Flex-Login-3-removebg-preview.png" alt="Alternate Text" />

    </div>

     <div id="Foo">

        <div id="SubForm1" >
            
            <h2 id="LoginForm">Login</h2>
            <form  id="form2" runat="server">
                 
                <label>Email </label>
                <input type="text" name="emailInput" id="loginEmail" name="Email" required />

                <br />

                <label> Password </label>
                <input type="password" name="passInput"  maxlength="12" required id="loginPass" runat="server" />
               
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
&nbsp;</form> 
        </div>

            <p>Doesn't have account? <a href="SignUp.aspx">Create Account</a> </p> 

    </div>



</body>
</html>