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

    }


    protected void GenerateButton_Click(object sender, EventArgs e)
    {

        string selectedCourse = DropDownList1.SelectedValue;
        string selectedSection = DropDownList2.SelectedValue;

        String a = "CS1000";
        string b = "SEC-1A";


        string connectionString = "Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT S.ROLL_NO, U.FULLNAME, SEC.SECNAME, G.TMARKS, G.GRADE " +
                         "FROM COURSES C INNER JOIN STUDENT_COURSES SC ON SC.COURSE_ID = C.C_ID " +
                         "INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID INNER JOIN USERS U ON U.U_ID = S.S_ID " +
                         "INNER JOIN SECTION SEC ON SEC.COURSE_ID = SC.COURSE_ID INNER JOIN GRADES G ON " +
                         "G.G_ID = SC.GRADE_ID WHERE C.CCODE = @CourseCode and SEC.SECNAME = @SecName";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@CourseCode", selectedCourse);
                command.Parameters.AddWithValue("@SecName", selectedSection);


                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    GridView1.DataSource = reader;
                    GridView1.DataBind();

                    reader.Close();
                }
            }

            cont2.Controls.Add(GridView1);
            GridView1.CssClass = "grid2";
        }


        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query2 = "SELECT G.GRADE, COUNT(*) AS COUNT " +
            "FROM (SELECT G.GRADE " +
            "FROM COURSES C " +
            "INNER JOIN STUDENT_COURSES SC ON SC.COURSE_ID = C.C_ID " +
            "INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID " +
            "INNER JOIN USERS U ON U.U_ID = S.S_ID " +
            "INNER JOIN SECTION SEC ON SEC.COURSE_ID = SC.COURSE_ID " +
            "INNER JOIN GRADES G ON G.G_ID = SC.GRADE_ID " +
            "WHERE SEC.SECNAME = @SecName AND C.CCODE = @CourseCode) AS G " +
            "GROUP BY G.GRADE";


            using (SqlCommand command = new SqlCommand(query2, connection))
            {
                command.Parameters.AddWithValue("@CourseCode", selectedCourse);
                command.Parameters.AddWithValue("@SecName", selectedSection);

                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    GridView2.DataSource = reader;
                    GridView2.DataBind();

                    reader.Close();
                }
            }

            cont2.Controls.Add(GridView2);
            GridView1.CssClass = "grid2";
        }


    }
    
}