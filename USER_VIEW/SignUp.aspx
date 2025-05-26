<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

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

     <div id="Form">

        <div id="SubForm">
            <!-- Form -->
            <h2 id="SignUpForm">Sign Up</h2>

            <form  id="form1" runat="server" method="post">

                <label>Name </label>
                <input type="text" name="Name"  required id="nameInput" runat="server"/>

                <br />
                
                <label>Email </label>
                <input type="text" name="Email" placeholder="example@example.com" required />

                <label>CNIC </label>
                <input type="text" id="cnic" placeholder="37204-0121800-9" name="CNIC" required />
                
                <label>Contact </label>
                <input type="text" id="contact" placeholder="0348-7948765" name="Contact" required />

                <label>Role</label>
                <select id="role" name="Role">
                    <option>Administrator</option>
                    <option>Faculty</option>
                    <option>Student</option>

                </select>

                <br />
             
                <label>Gender</label>
                <select name="gender">
                    <option>Male</option>
                    <option>Female</option>
                </select>

                <label>Blood Group</label>
                <select name="bldGrp">
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>

                
                <br />
                <label> Date of Birth </label>
                <input type="date" name="DateOfBirth" required />

                <br />
                
                <label> Password </label>
                <input type="password" name="Password" maxlength="12" required id="passInput" runat="server" />
                
                <br />
               
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
&nbsp;</form>
        </div>

            <p>Already have account? <a href="Login.aspx">Login</a> </p> 

    </div>



</body>
</html>
