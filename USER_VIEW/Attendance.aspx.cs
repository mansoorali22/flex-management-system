using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MenuItemBinding();
        }
    }

    private void MenuItemBinding()
    {
        conn.Open();
        string query = "Select CCODE from Courses inner join STUDENT_COURSES on STUDENT_COURSES.COURSE_ID = Courses.C_ID where STUDENT_COURSES.STUDENT_ID = (select U_ID from USERS where EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc))";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        DataTable dttc = new DataTable();
        da.Fill(ds);
        dttc = ds.Tables[0];

        Menu1.Items.Clear(); // Clear existing items before adding new ones

        foreach (DataRow row in dttc.Rows)
        {
            Menu1.Items.Add(new MenuItem(row["CCODE"].ToString()));
        }

        conn.Close();
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
       
        string selectedCourse = e.Item.Text;

        GridView gridView = new GridView();
        gridView.ID = "dynamicGridView"; // Set a unique ID for the grid

        // Set the properties of the grid as desired
        gridView.AutoGenerateColumns = true;
        gridView.DataSource = GetGridData(selectedCourse); // Replace this with your actual data source
        gridView.DataBind();

        // Add the grid to the content div
        cont3.Controls.Add(gridView);
        gridView.CssClass = "custom-grid";
    }

    private DataTable GetGridData(string cName)
    {
        DataTable dataTable = new DataTable();

        string courseId = cName;

        string connectionString = "Data Source=DESKTOP-QQHIGK2\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True"; 

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT A.LECTURE_NO, A.LDATE, A.DURATION, A.PRESENCE FROM ATTENDANCE A INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID INNER JOIN USERS U ON U.U_ID = S.S_ID WHERE U.EMAIL = (select U_ID from USERS where EMAIL = (select top 1 email from loggedInSucessfully order by loggedTime desc) and C.CCODE = '" + courseId + "'";

            string query2 = "SELECT A.LECTURE_NO, A.LDATE, A.DURATION, A.PRESENCE " +
               "FROM ATTENDANCE A " +
               "INNER JOIN STUDENT_COURSES SC ON SC.SC_ID = A.SC_ID " +
               "INNER JOIN COURSES C ON C.C_ID = SC.COURSE_ID " +
               "INNER JOIN STUDENT S ON S.S_ID = SC.STUDENT_ID " +
               "INNER JOIN USERS U ON U.U_ID = S.S_ID " +
               "WHERE U.EMAIL = (SELECT TOP 1 email FROM loggedInSucessfully ORDER BY loggedTime DESC)" +
               "AND C.CCODE = '" + courseId + "'";

            using (SqlCommand command = new SqlCommand(query2, connection))
            {
                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    
                    dataTable.Columns.Add("LECTURE_NO");
                    dataTable.Columns.Add("LDATE");
                    dataTable.Columns.Add("DURATION");
                    dataTable.Columns.Add("PRESENCE");



                    while (reader.Read())
                    {
                        DataRow row = dataTable.NewRow();
                        row["LECTURE_NO"] = reader["LECTURE_NO"];
                        row["LDATE"] = reader["LDATE"];
                        row["DURATION"] = reader["DURATION"];
                        row["PRESENCE"] = reader["PRESENCE"];

                        dataTable.Rows.Add(row);
                    }
                }
            }
        }

        return dataTable;
    }


}
