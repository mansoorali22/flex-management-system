<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Flex | Student</title>
    <link rel="stylesheet" href="StyleSheet.css" />
    <link rel="icon" href="/Images/flex-tlogo.png" type="image/icon type" />
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <style type="text/css">
        .form-control {}
    </style>

</head>
<body>
     
     <form id="form1" runat="server">
     
     <div class="body">


     <div class="header">
          <img src="/Images/flex-logo-blue.png"/>  
      </div>

      <div class="nav">
        <p> <a href="Home.aspx">Home</a> </p>
        <p> <a href="Attendance.aspx">Attendance</a> </p>
        <p> <a href="Marks.aspx">Marks</a> </p>
        <p> <a href="Transcript.aspx">Transcript</a> </p>
        <p> <a href="#">Feedback</a> </p>


      </div>

      <div class="home" id="fbhome">

          <div id="courses">

              <div id="coursesName">
                  <h2> Feedback Form </h2>
                   
              </div>

          </div> 

          <div class="content3">




              <div class="container">
            <h2>&nbsp;</h2>
            <ul class="form-section page-section" style="box-sizing: border-box; list-style: outside none; margin: 0px; padding: 0px; position: relative; zoom: 1; clear: both; color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <li id="cid_1" class="form-input-wide" data-type="control_head" style="box-sizing: border-box;">
                    <div class="form-header-group  header-default" style="box-sizing: border-box; background: center top no-repeat scroll transparent; border-bottom: 1px solid rgb(255, 203, 185); padding: 24px 0px; clear: both; border-right: none rgb(255, 203, 185); border-left: none rgb(255, 203, 185); border-image: initial; margin: 12px 36px; border-top: 0px; text-align: left; font-family: &quot;Nova Round&quot;, sans-serif;">
                        <div class="header-text httal htvam" style="box-sizing: border-box; text-align: left; vertical-align: middle;">
                            <h2 id="header_1" class="form-header" data-component="header" style="box-sizing: border-box; margin: 0px; color: rgb(99, 33, 28); font-size: 1.714em; line-height: 1.618em;">Course Feedback Form</h2>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="form-group">
                <span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 241, 236); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Date:</span><label for="studentName"> </label>
                &nbsp;<asp:TextBox ID="studentName0" runat="server" CssClass="form-control" />
                <br />
                <br />
            </div>
            <div class="form-group">
                <label for="studentName"><span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 241, 236); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Student:</span> </label>
&nbsp;<asp:TextBox ID="studentName" runat="server" CssClass="form-control" />
                <br />
                <br />
            </div>
            <div class="form-group">
                <span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 241, 236); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Course Name: </span>&nbsp;<asp:DropDownList ID="courseName" runat="server" CssClass="form-control" />
                <br />
                <br />
            </div>
            <div class="form-group">
                <span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 241, 236); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Teacher Name: </span>&nbsp;<asp:TextBox ID="teacherName" runat="server" CssClass="form-control" />
                <br />
                <br />
                <br />
                <p style="box-sizing: border-box; color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.75); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <strong style="box-sizing: border-box;">Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.</strong></p>
                <p style="box-sizing: border-box; color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.75); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <strong style="box-sizing: border-box;">For reference, the metric are as follows:</strong></p>
                <p style="box-sizing: border-box; color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.75); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding-left: 30px;">
                    1&nbsp; - Poor<br style="box-sizing: border-box;" />
                    2 -&nbsp;Below Average<br style="box-sizing: border-box;" />
                    3 - Average<br style="box-sizing: border-box;" />
                    4 - Good<br style="box-sizing: border-box;" />
                    5 - Excellent</p>
            </div>
            <div class="form-group">
                &nbsp;</div>
            <div class="form-group">
                Appearance
                <label for="rating">and Personal Presentations:
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <table aria-labelledby="label_11" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix" style="box-sizing: border-box; border-collapse: collapse; font-size: 15px; margin-bottom: 5px; color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 241, 236); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" summary="">
                    <tbody style="box-sizing: border-box;">
                        <tr class="form-matrix-tr form-matrix-header-tr" style="box-sizing: border-box; border-color: rgb(255, 203, 185);">
                            <th class="form-matrix-headers form-matrix-column-headers form-matrix-column_0" scope="col" style="box-sizing: border-box; position: relative; border: 1px solid rgb(204, 204, 204); background: rgb(221, 221, 221); text-align: center; color: inherit; font-size: 0.786em; font-weight: normal;">
                                <label id="label_11_col_0" style="box-sizing: border-box;">
                                1</label></th>
                            <th class="form-matrix-headers form-matrix-column-headers form-matrix-column_1" scope="col" style="box-sizing: border-box; position: relative; border: 1px solid rgb(204, 204, 204); background: rgb(221, 221, 221); text-align: center; color: inherit; font-size: 0.786em; font-weight: normal;">
                                <label id="label_11_col_1" style="box-sizing: border-box;">
                                2</label></th>
                            <th class="form-matrix-headers form-matrix-column-headers form-matrix-column_2" scope="col" style="box-sizing: border-box; position: relative; border: 1px solid rgb(204, 204, 204); background: rgb(221, 221, 221); text-align: center; color: inherit; font-size: 0.786em; font-weight: normal;">
                                <label id="label_11_col_2" style="box-sizing: border-box;">
                                3</label></th>
                            <th class="form-matrix-headers form-matrix-column-headers form-matrix-column_3" scope="col" style="box-sizing: border-box; position: relative; border: 1px solid rgb(204, 204, 204); background: rgb(221, 221, 221); text-align: center; color: inherit; font-size: 0.786em; font-weight: normal;">
                                <label id="label_11_col_3" style="box-sizing: border-box;">
                                4</label></th>
                            <th class="form-matrix-headers form-matrix-column-headers form-matrix-column_4" scope="col" style="box-sizing: border-box; position: relative; border: 1px solid rgb(204, 204, 204); background: rgb(221, 221, 221); text-align: center; color: inherit; font-size: 0.786em; font-weight: normal;">
                                <label id="label_11_col_4" style="box-sizing: border-box;">
                                5</label></th>
                        </tr>
                    </tbody>
                </table>
                <br />
                <span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(221, 221, 221); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Teacher attends class in a well presentable manner&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton26" runat="server" />
                <asp:RadioButton ID="RadioButton27" runat="server" />
                <asp:RadioButton ID="RadioButton28" runat="server" />
                <asp:RadioButton ID="RadioButton29" runat="server" />
                <asp:RadioButton ID="RadioButton30" runat="server" />
                </span>&nbsp;<span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(221, 221, 221); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><br />
                Teacher shows enthusiasm when teaching in class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton6" runat="server" />
                <asp:RadioButton ID="RadioButton7" runat="server" />
                <asp:RadioButton ID="RadioButton8" runat="server" />
                <asp:RadioButton ID="RadioButton9" runat="server" />
                <asp:RadioButton ID="RadioButton10" runat="server" />
                <br />
                Teacher is well articulated and shows full knowledge of the subject in teaching&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton16" runat="server" />
                <asp:RadioButton ID="RadioButton17" runat="server" />
                <asp:RadioButton ID="RadioButton18" runat="server" />
                <asp:RadioButton ID="RadioButton19" runat="server" />
                <asp:RadioButton ID="RadioButton20" runat="server" />
                <br />
                Teacher shows initiative and flexibility in teaching&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton21" runat="server" />
                <asp:RadioButton ID="RadioButton22" runat="server" />
                <asp:RadioButton ID="RadioButton23" runat="server" />
                <asp:RadioButton ID="RadioButton24" runat="server" />
                <asp:RadioButton ID="RadioButton25" runat="server" />
                <br />
                Teacher speaks loud and clear enough to be heard by the whole class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton31" runat="server" />
                <asp:RadioButton ID="RadioButton32" runat="server" />
                <asp:RadioButton ID="RadioButton33" runat="server" />
                <asp:RadioButton ID="RadioButton34" runat="server" />
                <asp:RadioButton ID="RadioButton35" runat="server" />
                </span>
                <br />
                <br />
                <br />
                Professional Practices:
                <br />
                <br />
                <span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(221, 221, 221); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Teacher shows professionalism in class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton36" runat="server" />
                <asp:RadioButton ID="RadioButton37" runat="server" />
                <asp:RadioButton ID="RadioButton38" runat="server" />
                <asp:RadioButton ID="RadioButton39" runat="server" />
                <asp:RadioButton ID="RadioButton40" runat="server" />
                <br />
                Teacher shows commitment to teaching the class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton41" runat="server" />
                <asp:RadioButton ID="RadioButton42" runat="server" />
                <asp:RadioButton ID="RadioButton43" runat="server" />
                <asp:RadioButton ID="RadioButton44" runat="server" />
                <asp:RadioButton ID="RadioButton45" runat="server" />
                <br />
                Teacher encourages students to engage in class discussions and ask questions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton46" runat="server" />
                <asp:RadioButton ID="RadioButton47" runat="server" />
                <asp:RadioButton ID="RadioButton48" runat="server" />
                <asp:RadioButton ID="RadioButton49" runat="server" />
                <asp:RadioButton ID="RadioButton50" runat="server" />
                <br />
                Teacher handles criticisms and suggestions professionally&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton51" runat="server" />
                <asp:RadioButton ID="RadioButton52" runat="server" />
                <asp:RadioButton ID="RadioButton53" runat="server" />
                <asp:RadioButton ID="RadioButton54" runat="server" />
                <asp:RadioButton ID="RadioButton55" runat="server" />
                <br />
                Teacher comes to class on time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton56" runat="server" />
                <asp:RadioButton ID="RadioButton57" runat="server" />
                <asp:RadioButton ID="RadioButton58" runat="server" />
                <asp:RadioButton ID="RadioButton59" runat="server" />
                <asp:RadioButton ID="RadioButton60" runat="server" />
                <br />
                Teacher ends class on time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton61" runat="server" />
                <asp:RadioButton ID="RadioButton62" runat="server" />
                <asp:RadioButton ID="RadioButton63" runat="server" />
                <asp:RadioButton ID="RadioButton64" runat="server" />
                <asp:RadioButton ID="RadioButton65" runat="server" />
                &nbsp;</span><br />
                <br />
                <br />
                Teaching Methods:
                <br />
                <br />
                <span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(221, 221, 221); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Teacher shows well rounded knowledge over the subject matter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton66" runat="server" />
                <asp:RadioButton ID="RadioButton67" runat="server" />
                <asp:RadioButton ID="RadioButton68" runat="server" />
                <asp:RadioButton ID="RadioButton69" runat="server" />
                <asp:RadioButton ID="RadioButton70" runat="server" />
                <br />
                Teacher has organized the lesson conducive for easy understanding of students&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton71" runat="server" />
                <asp:RadioButton ID="RadioButton72" runat="server" />
                <asp:RadioButton ID="RadioButton73" runat="server" />
                <asp:RadioButton ID="RadioButton74" runat="server" />
                <asp:RadioButton ID="RadioButton75" runat="server" />
                <br />
                Teacher shows dynamism and enthusiasm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton76" runat="server" />
                <asp:RadioButton ID="RadioButton77" runat="server" />
                <asp:RadioButton ID="RadioButton78" runat="server" />
                <asp:RadioButton ID="RadioButton79" runat="server" />
                <asp:RadioButton ID="RadioButton80" runat="server" />
                <br />
                Teacher stimulates the critical thinking of students&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton81" runat="server" />
                <asp:RadioButton ID="RadioButton82" runat="server" />
                <asp:RadioButton ID="RadioButton83" runat="server" />
                <asp:RadioButton ID="RadioButton84" runat="server" />
                <asp:RadioButton ID="RadioButton85" runat="server" />
                <br />
                Teacher handles the class environment conducive for learning&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton86" runat="server" />
                <asp:RadioButton ID="RadioButton87" runat="server" />
                <asp:RadioButton ID="RadioButton88" runat="server" />
                <asp:RadioButton ID="RadioButton89" runat="server" />
                <asp:RadioButton ID="RadioButton90" runat="server" />
                </span>
                <br />
                <br />
                <br />
                Disposition towards Students: <span style="col <span style="color: rgb(255, 0, 0); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 241, 236); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                <br />
                <br />
                <span style="color: rgb(99, 33, 28); font-family: &quot;Nova Round&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(221, 221, 221); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Teacher believes that students can learn from the class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton91" runat="server" />
                <asp:RadioButton ID="RadioButton92" runat="server" />
                <asp:RadioButton ID="RadioButton93" runat="server" />
                <asp:RadioButton ID="RadioButton94" runat="server" />
                <asp:RadioButton ID="RadioButton95" runat="server" />
                <br />
                Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton96" runat="server" />
                <asp:RadioButton ID="RadioButton97" runat="server" />
                <asp:RadioButton ID="RadioButton98" runat="server" />
                <asp:RadioButton ID="RadioButton99" runat="server" />
                <asp:RadioButton ID="RadioButton100" runat="server" />
                <br />
                Teacher finds the students strengths as basis for growth and weaknesses for opportunities for improvement
                <asp:RadioButton ID="RadioButton101" runat="server" />
                <asp:RadioButton ID="RadioButton102" runat="server" />
                <asp:RadioButton ID="RadioButton103" runat="server" />
                <asp:RadioButton ID="RadioButton104" runat="server" />
                <asp:RadioButton ID="RadioButton105" runat="server" />
                <br />
                Teacher understands the weakness of a student and helps in the student&#39;s improvement&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton106" runat="server" />
                <asp:RadioButton ID="RadioButton107" runat="server" />
                <asp:RadioButton ID="RadioButton108" runat="server" />
                <asp:RadioButton ID="RadioButton109" runat="server" />
                <asp:RadioButton ID="RadioButton110" runat="server" />
                <br />
                <br />
                </span></span>
                <br />
                <br />
                <br />
                Comments:&nbsp;<br />
&nbsp;<asp:TextBox ID="feedback" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Width="620px" />
                <br />
                </label>
                <br />
                </label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Button ID="submitButton" runat="server" Text="Submit Feedback" OnClick="submitButton_Click" CssClass="btn btn-primary" BackColor="#0099FF" ForeColor="White" />
            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>












          </div>
         
      </div>
   
     </div>


   
     </form>


   
</body>
</html>
