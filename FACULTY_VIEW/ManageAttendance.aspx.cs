using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class FACULTY_VIEW_ManageAttendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedCourse = List1.SelectedValue;

        BindGrid();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid();
    }


    private void BindGrid()
    {
        string selectedCourse = List1.SelectedValue;
        string selectedSection = DropDownList2.SelectedValue;
        string selectedDate = SelectDate.Value;

        int selectedIndex = List1.SelectedIndex;
        if (selectedIndex >= 0)
        {
            string selectedValue = List1.Items[selectedIndex].Value;
        }

        string connectionString = "Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";

        string cid = "CS1000";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT S.ROLL_NO, U2.FULLNAME AS NAME, A.PRESENCE " +
                           "FROM ATTENDANCE A " +
                           "INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID " +
                           "INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID " +
                           "INNER JOIN SECTION SEC ON SEC.COURSE_ID = C.C_ID " +
                           "INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID " +
                           "INNER JOIN FACULTY_COURSES FC ON FC.COURSE_ID = SC.COURSE_ID " +
                           "INNER JOIN USERS U1 ON U1.U_ID = FC.FACULTY_ID " +
                           "INNER JOIN USERS U2 ON U2.U_ID = S.S_ID " +
                           "WHERE U1.EMAIL = (SELECT TOP 1 email FROM loggedInSucessfully ORDER BY loggedTime DESC) " +
                           "AND C.CCODE = @CourseCode " +
                           "AND LDATE = (SELECT TOP 1 LDATE FROM ATTENDANCE) and SECNAME = @SecName";

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
        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowIndex = e.RowIndex;
        DropDownList ddlPresence = (DropDownList)GridView1.Rows[rowIndex].FindControl("ddlPresence");
        string presence = ddlPresence.SelectedValue;

        // Update the data in the database using the presence value
        // ...

        GridView1.EditIndex = -1;
        BindGrid();
    }






    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Handle row selection if needed
        // ...
    }


    protected void SaveButton_Click(object sender, EventArgs e)
    {
        string selectedCourse = List1.SelectedValue;

        string connectionString = "Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";

            

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                
                string query1 = "SELECT COUNT(A.LECTURE_NO) FROM ATTENDANCE A INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID" +
                             "INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID WHERE C.CCODE = '" + selectedCourse + "'";
                SqlCommand command = new SqlCommand(query1, connection);

                int count, a_id;
                
                using (command = new SqlCommand(query1, connection))
                
                {
                    count = Convert.ToInt32(command.ExecuteScalar());
                }


                count++;


                string query2 = "select count(A_ID) from ATTENDANCE";
                SqlCommand command2 = new SqlCommand(query2, connection);
            using (command2 = new SqlCommand(query2, connection))

            {
                a_id = Convert.ToInt32(command.ExecuteScalar());
            }

            a_id++;

            string query3 = "INSERT INTO YourTableName (Roll_No, Name, Presence) VALUES (@RollNo, @Name, @Presence)";
                SqlCommand command3 = new SqlCommand(query3, connection);

                command.Parameters.Add("@RollNo", SqlDbType.VarChar);
                command.Parameters.Add("@Name", SqlDbType.VarChar);
                command.Parameters.Add("@Presence", SqlDbType.VarChar);

                connection.Open();

                foreach (GridViewRow row in GridView1.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        string rollNo = ((Label)row.FindControl("lblRollNo")).Text;
                        string name = ((Label)row.FindControl("lblName")).Text;
                        string presence = ((DropDownList)row.FindControl("ddlPresence")).SelectedValue;

                        command.Parameters["@RollNo"].Value = rollNo;
                        command.Parameters["@Name"].Value = name;
                        command.Parameters["@Presence"].Value = presence;

                        command.ExecuteNonQuery();
                    }
                }

                connection.Close();
            }
        

    }


}