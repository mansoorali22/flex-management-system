using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = 0;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True"); //Connection String
        conn.Open();
        //MessageBox.Show("Connection Open");
        SqlCommand cm,cm2;
        string name = Request.Form["nameInput"];
        string email = Request.Form["Email"];
        string cnic = Request.Form["CNIC"];
        string contact = Request.Form["Contact"];
        string role = Request.Form["Role"];
        string gender = Request.Form["gender"];
        string bloodGroup = Request.Form["bldGrp"];
        string dob = Request.Form["DateOfBirth"];
        string pass = Request.Form["passInput"];

        string query2 = "select COUNT(U_ID) as NUM FROM USERS";

        cm2 = new SqlCommand(query2, conn);
        int count=0;

        count = Convert.ToInt32(cm2.ExecuteScalar());

        count++;

        cm2.Dispose();
        conn.Close();
        conn.Open();

        string query = "INSERT INTO USERS (U_ID, FULLNAME, GENDER, DOB, CNIC, PHONENO, EMAIL, U_PASSWORD, U_ROLE) VALUES ( '" + count + "','" + name + "','" + gender + "' , '" + dob +"', '" +cnic +"', '" +contact + "', '" + email + "', '" + pass + "', '" + role + "' )";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
        conn.Close();

        Server.Transfer("Login.aspx");
    }
}