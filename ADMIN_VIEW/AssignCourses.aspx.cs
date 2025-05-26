using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

        //string selectedCourse = DropDownList2.SelectedValue;
        //string select = DropDownList3
        string selectedSection = DropDownList3.SelectedValue;
        string connectionString = "Data Source=DESKTOP-IRE7O12\\SQLEXPRESS01;Initial Catalog=DBProject;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {

            string query = "SELECT C.CCODE, C.CNAME, C.CREDITS, C.CTYPE, C.PREREQ\r\nFROM COURSES C\r\nINNER JOIN SEMESTER S ON S.SEM_ID = C.SEMESTER_ID\r\nWHERE S.SNAME = @Sem";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@CourseCode", selectedSection);
                //command.Parameters.AddWithValue("@SecName", selectedSection);


                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    GridView1.DataSource = reader;
                    GridView1.DataBind();

                    reader.Close();
                }
            }
        }
    }
}