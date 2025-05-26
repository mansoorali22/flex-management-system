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


    protected void AttReport_Click(object sender, EventArgs e)
    {

        String a = "CS1000";



        string connectionString = "Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT S.ROLL_NO, U2.FULLNAME, SEC.SECNAME, A.PRESENCE, 100.0 * COUNT(CASE WHEN A.PRESENCE = 'P' THEN 1 END) / COUNT(*) AS TOTAL_PERCENTAGE " +
                "FROM ATTENDANCE A INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID INNER JOIN SECTION SEC " +
                "ON SEC.COURSE_ID = C.C_ID INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID INNER JOIN FACULTY_COURSES FC ON FC.COURSE_ID = SC.COURSE_ID " +
                "INNER JOIN USERS U1 ON U1.U_ID = FC.FACULTY_ID INNER JOIN USERS U2 ON U2.U_ID = S.S_ID WHERE U1.EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc)" +
                " AND C.CCODE = @Code GROUP BY S.ROLL_NO, U2.FULLNAME, SEC.SECNAME, A.PRESENCE";


            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Code", a);
               


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




    }


    protected void EvalReport_Click(object sender, EventArgs e)
    {

    }


}